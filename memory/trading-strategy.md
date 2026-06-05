# Trading Strategy

## Goal
Beat the S&P 500 on a $100k paper trading account. Time horizon: weeks to months per position.

## What to Buy
- Companies with strong revenue growth (>15% YoY preferred)
- Reasonable P/E relative to sector peers
- Durable competitive moat (brand, network effects, switching costs, or cost advantage)
- Market cap > $1B
- No crypto-adjacent companies

## Research Signals (priority order)
1. Revenue growth trajectory — accelerating is better than decelerating
2. Gross margin trend — expanding margins signal pricing power
3. Management quality and capital allocation history
4. Competitive positioning and moat strength
5. Macro tailwinds for the sector

## Entry Rules
- Only buy when there is a clear fundamental thesis articulable in one sentence
- Never buy on earnings announcement day
- Never chase momentum without a fundamental reason
- Max 5% of portfolio per position
- Max 3 new positions per week

## Exit Rules
- 10% trailing stop on every position set immediately after buy fills
- Cut any position down >7% intraday at midday check
- Sell when the fundamental thesis breaks — not just because the price dropped
- If thesis still holds and stop hasn't triggered, hold

## Risk Controls
- Daily loss cap: −3% of total portfolio → stop all trading that day
- Keep at least 20% in cash — never go more than 80% invested
- If a position hits 10% trailing stop, do not immediately re-enter

## S&P 500 Benchmark
- Track performance weekly against SPY ETF
- Goal: outperform over rolling 4-week periods
- Record SPY price every Monday morning in research-log.md

## Current Lessons Learned
*(Agent updates this section during weekly reviews)*
- **Cohort-lag + thin cushion + far-away catalyst = consider a discretionary trim BEFORE the stop trips.** When a position is (a) lagging its sector cohort for multiple weeks, (b) has trailing-stop cushion under ~3% of price, AND (c) the next thesis-validating catalyst is >2 weeks out, the trailing stop's job is forced binary outcome at a steeper realized loss than necessary. Rotating into a non-correlated diversifier earlier captures most of the downside protection at lower realized cost. Pattern observed on GOOGL (5/22 → 6/2) and AMZN (6/2 → 6/5) — both stopped out at >7% loss with thesis still intact.
- **A high cash floor is a cushion, not just a drag.** ~80%+ cash structurally produces lower-beta returns: UND on UP-tape weeks, OP on DOWN-tape weeks. Acceptable so long as the OP weeks meaningfully exceed the UND weeks (week 3 +1.91% vs week 1/2 average −1.00% UND). Do not abandon the cash floor to "chase the index" on UP weeks — the OP on DOWN weeks is the trade-off.
- **Pre-catalyst discipline: do not trim a winner into a known scheduled catalyst.** LLY into ADA Saturday 6/6 — held through three weeks of opportunity to trim and was the book's largest contributor to weekly OP. Trailing stop is sufficient downside management; the upside of letting a confirmed-thesis winner run into its catalyst is structurally asymmetric.
- **Non-AI diversifier thesis only proves out on AI-cohort-sell-off days, not on broad up days.** ISRG sold off with the cohort 6/2 (broad risk-off) but outperformed sharply 6/5 (NFP risk-off, AI-cohort dumped). One day of correlated weakness doesn't break the diversifier thesis — wait for the right risk regime to evaluate.
- **Concentration in mega-cap-AI carries hidden tail risk on hot-data days.** Two stops in 4 trading days (GOOGL 6/2, AMZN 6/5) both on AI-mega-cap names during data-event sell-offs. Going forward: cap mega-cap-AI cohort exposure at ~3 names total (≤15% of equity combined) and require at least one truly non-AI position (pharma, medtech, financials, payments, defensive) for every 2 AI-mega-cap positions.
