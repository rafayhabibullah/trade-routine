#!/usr/bin/env bash
# Alpaca Paper Trading API smoke test
# Usage: source .env && bash test-alpaca.sh

set -e

BASE="https://paper-api.alpaca.markets"
PASS=0
FAIL=0

check() {
  local name="$1"
  local status="$2"
  local body="$3"
  if echo "$body" | grep -q '"error"'; then
    echo "FAIL  $name — $(echo "$body" | grep -o '"message":"[^"]*"' | head -1)"
    FAIL=$((FAIL + 1))
  elif [ "$status" -ge 400 ]; then
    echo "FAIL  $name — HTTP $status"
    FAIL=$((FAIL + 1))
  else
    echo "PASS  $name"
    PASS=$((PASS + 1))
  fi
}

if [ -z "$ALPACA_API_KEY" ] || [ -z "$ALPACA_SECRET_KEY" ]; then
  echo "ERROR: Set ALPACA_API_KEY and ALPACA_SECRET_KEY before running."
  exit 1
fi

AUTH=(-H "APCA-API-KEY-ID: $ALPACA_API_KEY" -H "APCA-API-SECRET-KEY: $ALPACA_SECRET_KEY")

echo "=== Alpaca Paper Trading API Tests ==="
echo "Endpoint: $BASE"
echo ""

call() {
  local method="$1" url="$2"
  local tmp; tmp=$(curl -s -w "\n__STATUS__%{http_code}" -X "$method" "$url" "${AUTH[@]}")
  STATUS=$(echo "$tmp" | grep "__STATUS__" | sed 's/__STATUS__//')
  BODY=$(echo "$tmp" | grep -v "__STATUS__")
}

# 1. Market clock
call GET "$BASE/v2/clock"
check "GET /v2/clock (market hours)" "$STATUS" "$BODY"
echo "      $(echo "$BODY" | grep -o '"is_open":[a-z]*' | head -1)"

# 2. Account details
call GET "$BASE/v2/account"
check "GET /v2/account" "$STATUS" "$BODY"
echo "      $(echo "$BODY" | grep -o '"portfolio_value":"[^"]*"' | head -1)  $(echo "$BODY" | grep -o '"cash":"[^"]*"' | head -1)"

# 3. Open positions
call GET "$BASE/v2/positions"
check "GET /v2/positions" "$STATUS" "$BODY"
echo "      open positions: $(echo "$BODY" | grep -o '"symbol"' | wc -l | tr -d ' ')"

# 4. Open orders
call GET "$BASE/v2/orders?status=open"
check "GET /v2/orders?status=open" "$STATUS" "$BODY"
echo "      open orders: $(echo "$BODY" | grep -o '"id"' | wc -l | tr -d ' ')"

# 5. Assets endpoint
call GET "$BASE/v2/assets/AAPL"
check "GET /v2/assets/AAPL (data feed)" "$STATUS" "$BODY"
echo "      AAPL $(echo "$BODY" | grep -o '"tradable":[a-z]*' | head -1)"

echo ""
echo "=== Results: $PASS passed, $FAIL failed ==="
[ "$FAIL" -eq 0 ] && exit 0 || exit 1
