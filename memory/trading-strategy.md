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
- **Cohort overlap drags the book on bad days.** When ≥3 positions sit in the same factor (e.g., AI/long-duration tech), one hawkish-Fed or yield-up session pulls them all together and the diversifier (LLY) can't offset. Before any new buy, check how many existing positions share the candidate's primary factor — prefer the diversifier if the cohort is already ≥3.
- **Don't buy long-duration tech at the open on hawkish-Fed / yield-up days.** When 10Y yields are sticky-high (>4.6%) or core PCE prints on the hot side of in-line, AI/cloud names face sustained intraday pressure. Wait for a late-session base before adding to that cohort, even on otherwise clean theses.
- **Two consecutive weeks of cohort underperformance is signal, not noise.** When the same position lags peers two weeks running on the same narrative (e.g., GOOGL on AI-capex), consider a proactive trim before the 10% trail trips rather than letting price dictate exit.
