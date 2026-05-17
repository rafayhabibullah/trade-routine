#!/usr/bin/env bash
# Alpaca Paper Trading API smoke test
# Usage: ALPACA_API_KEY=xxx ALPACA_SECRET_KEY=xxx bash test-alpaca.sh

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

# 1. Market clock
BODY=$(curl -s -w "\n%{http_code}" -X GET "$BASE/v2/clock" "${AUTH[@]}")
STATUS=$(echo "$BODY" | tail -1); BODY=$(echo "$BODY" | head -n -1)
check "GET /v2/clock (market hours)" "$STATUS" "$BODY"
IS_OPEN=$(echo "$BODY" | grep -o '"is_open":[a-z]*' | head -1)
echo "      $IS_OPEN"

# 2. Account details
BODY=$(curl -s -w "\n%{http_code}" -X GET "$BASE/v2/account" "${AUTH[@]}")
STATUS=$(echo "$BODY" | tail -1); BODY=$(echo "$BODY" | head -n -1)
check "GET /v2/account" "$STATUS" "$BODY"
PORTFOLIO=$(echo "$BODY" | grep -o '"portfolio_value":"[^"]*"' | head -1)
CASH=$(echo "$BODY" | grep -o '"cash":"[^"]*"' | head -1)
echo "      $PORTFOLIO  $CASH"

# 3. Open positions
BODY=$(curl -s -w "\n%{http_code}" -X GET "$BASE/v2/positions" "${AUTH[@]}")
STATUS=$(echo "$BODY" | tail -1); BODY=$(echo "$BODY" | head -n -1)
check "GET /v2/positions" "$STATUS" "$BODY"
COUNT=$(echo "$BODY" | grep -o '"symbol"' | wc -l | tr -d ' ')
echo "      open positions: $COUNT"

# 4. Open orders
BODY=$(curl -s -w "\n%{http_code}" -X GET "$BASE/v2/orders?status=open" "${AUTH[@]}")
STATUS=$(echo "$BODY" | tail -1); BODY=$(echo "$BODY" | head -n -1)
check "GET /v2/orders?status=open" "$STATUS" "$BODY"
ORDERS=$(echo "$BODY" | grep -o '"id"' | wc -l | tr -d ' ')
echo "      open orders: $ORDERS"

# 5. Assets endpoint (confirms data feed works)
BODY=$(curl -s -w "\n%{http_code}" -X GET "$BASE/v2/assets/AAPL" "${AUTH[@]}")
STATUS=$(echo "$BODY" | tail -1); BODY=$(echo "$BODY" | head -n -1)
check "GET /v2/assets/AAPL (data feed)" "$STATUS" "$BODY"
TRADABLE=$(echo "$BODY" | grep -o '"tradable":[a-z]*' | head -1)
echo "      AAPL $TRADABLE"

echo ""
echo "=== Results: $PASS passed, $FAIL failed ==="
[ "$FAIL" -eq 0 ] && exit 0 || exit 1
