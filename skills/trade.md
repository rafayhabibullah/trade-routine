# Trade Skill

## Purpose
Execute trades and manage positions via the Alpaca paper trading API.
All commands use environment variables — never hardcode keys.

## Environment
- Base URL: `https://paper-api.alpaca.markets`
- Key ID: `$ALPACA_API_KEY`
- Secret: `$ALPACA_SECRET_KEY`

---

## Check Account Balance
```bash
curl -s -X GET "https://paper-api.alpaca.markets/v2/account" \
  -H "APCA-API-KEY-ID: $ALPACA_API_KEY" \
  -H "APCA-API-SECRET-KEY: $ALPACA_SECRET_KEY"
```
Key response fields: `cash`, `portfolio_value`, `buying_power`, `daytrade_count`

---

## Check Open Positions
```bash
curl -s -X GET "https://paper-api.alpaca.markets/v2/positions" \
  -H "APCA-API-KEY-ID: $ALPACA_API_KEY" \
  -H "APCA-API-SECRET-KEY: $ALPACA_SECRET_KEY"
```
Key response fields per position: `symbol`, `qty`, `avg_entry_price`, `current_price`,
`unrealized_pl`, `unrealized_plpc`, `change_today`

---

## Check Open Orders
```bash
curl -s -X GET "https://paper-api.alpaca.markets/v2/orders?status=open" \
  -H "APCA-API-KEY-ID: $ALPACA_API_KEY" \
  -H "APCA-API-SECRET-KEY: $ALPACA_SECRET_KEY"
```

---

## Calculate Position Size
Before placing any buy:
1. Get `portfolio_value` from account endpoint
2. Max position value = `portfolio_value * 0.05`
3. Get current stock price (WebSearch "[TICKER] stock price now")
4. Shares = floor(max_position_value / stock_price)
5. Verify shares * stock_price ≤ `buying_power`

---

## Place a Buy Order (Market)
Replace TICKER with symbol, SHARES with calculated integer quantity.
```bash
curl -s -X POST "https://paper-api.alpaca.markets/v2/orders" \
  -H "APCA-API-KEY-ID: $ALPACA_API_KEY" \
  -H "APCA-API-SECRET-KEY: $ALPACA_SECRET_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "symbol": "TICKER",
    "qty": "SHARES",
    "side": "buy",
    "type": "market",
    "time_in_force": "day"
  }'
```
Confirm response contains `"status": "accepted"` or `"filled"`.

---

## Set 10% Trailing Stop (immediately after buy)
Wait ~5 seconds for the buy to fill, then:
```bash
curl -s -X POST "https://paper-api.alpaca.markets/v2/orders" \
  -H "APCA-API-KEY-ID: $ALPACA_API_KEY" \
  -H "APCA-API-SECRET-KEY: $ALPACA_SECRET_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "symbol": "TICKER",
    "qty": "SHARES",
    "side": "sell",
    "type": "trailing_stop",
    "trail_percent": "10",
    "time_in_force": "gtc"
  }'
```

---

## Close a Position (cut a loser or exit)
```bash
curl -s -X DELETE "https://paper-api.alpaca.markets/v2/positions/TICKER" \
  -H "APCA-API-KEY-ID: $ALPACA_API_KEY" \
  -H "APCA-API-SECRET-KEY: $ALPACA_SECRET_KEY"
```

---

## Cancel All Open Orders
```bash
curl -s -X DELETE "https://paper-api.alpaca.markets/v2/orders" \
  -H "APCA-API-KEY-ID: $ALPACA_API_KEY" \
  -H "APCA-API-SECRET-KEY: $ALPACA_SECRET_KEY"
```

---

## Trade Log Entry Format
After every trade action, append a row to `memory/trade-log.md`:
```
| [YYYY-MM-DD] | [SYMBOL] | [buy/sell/cut] | [SHARES] | $[PRICE] | $[TOTAL] | [one-sentence thesis] | [open/closed-profit/closed-loss] |
```

---

## Pre-Trade Guardrail Checklist
Run through this before every buy order:
1. Position size ≤ 5% of `portfolio_value`? ✓/✗
2. New positions this week ≤ 3 (check trade-log.md for this week's buys)? ✓/✗
3. Portfolio down < 3% from today's opening value? ✓/✗
4. Market cap > $1B? ✓/✗
5. Not an earnings announcement day for this ticker? ✓/✗
6. Cash remaining after trade ≥ 20% of portfolio_value? ✓/✗

All six must be ✓ before placing the order.
