# Portfolio

**Last Updated:** 2026-05-25 (market open routine — Memorial Day, market closed)
**Account:** Alpaca Paper Trading
**Endpoint:** https://paper-api.alpaca.markets

## Account Summary
- Cash: $88,410.24
- Total Portfolio Value: $100,161.50
- Invested: $11,751.26 (11.73%)
- Cash Reserve: $88,410.24 (88.27%)
- Buying Power: $188,571.74 (account `balance_asof` 2026-05-22 — Friday close)

## Open Positions

| Symbol | Shares | Avg Entry | Current Price | Market Value | Day P&L | Total P&L % | Trailing Stop |
|--------|--------|-----------|---------------|--------------|---------|-------------|---------------|
| GOOGL | 10 | $397.996 | $382.97 | $3,829.70 | $0.00 (closed) | -3.78% | 10% trail (hwm $408.61 → stop $367.75) |
| META | 6 | $606.73 | $610.26 | $3,661.56 | $0.00 (closed) | +0.58% | 10% trail (hwm $615.59 → stop $554.03) |
| LLY | 4 | $992.355 | $1,065.00 | $4,260.00 | $0.00 (closed) | +7.32% | 10% trail (hwm $1,070.34 → stop $963.31) |

## Week Tracking
- Week Start Value: $100,161.50 (Friday 5/22 close — reference for week of 5/25; confirm at Tue 5/26 open)
- Week Start SPY: PENDING — Monday 5/25 is a market holiday; record SPY reference at Tue 5/26 open
- Day Open Value: n/a — market closed (Memorial Day)
- Day Close Value: n/a — market closed
- Day Return: n/a (no session)
- New Positions This Week: 0 of 3 allowed (NEW WEEK — counter reset; week of 5/25)
- Daily Loss Today: n/a — market closed, no trading

## Notes
- 5/25 (Memorial Day): US equity market CLOSED. Confirmed via Alpaca clock (`is_open: false`, next_open 2026-05-26 09:30 ET). No trades placed; no "Buy at open" entries were scheduled for today (AMZN was slated for Tue 5/26 open). Market-open routine ran in monitoring/bookkeeping mode only.
- Position prices above reflect Friday 5/22 close (`change_today` = 0; market closed since). Note: prior research notes recurringly mislabeled the holiday as "Mon 5/26" — Memorial Day 2026 is in fact today, Monday 5/25; the first new-position window is Tuesday 5/26 open.
- All three GTC trailing stops verified ACTIVE on Alpaca: GOOGL stop $367.749 (hwm $408.61), META stop $554.031 (hwm $615.59), LLY stop $963.306 (hwm advanced to $1,070.34 on Friday's run-up). LLY stop tightened vs 5/21 ($942.57) as the position made new highs.
- GOOGL at $382.97 (-3.78% from $397.996 entry) — weakest position; Morgan Stanley Buy/$430 PT thesis intact, stop $367.75 ~4% below current. Monitor AI-capex narrative.
- META at $610.26 (+0.58% from $606.73 entry) — green; layoffs/AI-reallocation thesis on track.
- LLY at $1,065.00 (+7.32% from $992.355 entry) — strongest; retatrutide Phase 3 ADA Scientific Sessions readout in June is the upside catalyst. Let it run into ADA; trailing stop protects gains.
- Plan for Tue 5/26 open: AMZN primary buy candidate (~4% / ~$5k position), MSFT secondary. New-week cap 0/3. Refresh earnings no-buy list at Tuesday pre-market: verify AMZN/MSFT clear of near-term earnings; re-check full 5/26 week calendar (WMT, PDD already post-print). Record Week Start SPY reference at Tuesday open.
