# Review Skill

## Purpose
Assess weekly performance, extract lessons, and improve the trading strategy.

## Step 1 — Get SPY Benchmark
WebSearch: "SPY stock price today [date]"
Calculate weekly SPY return:
`weekly_spy_return = (current_SPY - week_start_SPY) / week_start_SPY * 100`
(week_start_SPY is recorded every Monday in research-log.md)

## Step 2 — Get Portfolio Performance
From Alpaca account endpoint, get `portfolio_value`.
`weekly_return = (current_portfolio_value - week_start_value) / week_start_value * 100`
(week_start_value is in portfolio.md)

## Step 3 — Calculate vs S&P
`vs_sp = weekly_return - weekly_spy_return`
Positive = outperforming. Negative = underperforming.

## Step 4 — Grade the Week
- A: Beat S&P by >2%
- B: Beat S&P by 0.5%–2%
- C: Within ±0.5% of S&P
- D: Underperformed S&P by 0.5%–2%
- F: Underperformed S&P by >2%

## Step 5 — Review Each Trade This Week
For every trade in this week's trade-log entries:
- Did the thesis play out as expected?
- Which research signal was most predictive?
- Was entry/exit timing good?
- What would you do differently?

## Step 6 — Extract Durable Lessons
From the trade reviews, identify any rule-level insights worth adding to trading-strategy.md.
Only add lessons that generalize beyond one stock (e.g. "avoid buying into sector rotation weeks").

## Output Format for weekly-review.md
Append:
```
## Week of [YYYY-MM-DD] to [YYYY-MM-DD]

**Portfolio Value:** $[VALUE] (started week at $[START_VALUE])
**Weekly Return:** [+/-X.XX%]
**SPY Weekly Return:** [+/-X.XX%]
**vs S&P:** [+/-X.XX%]
**Grade:** [A/B/C/D/F]

### Trades This Week
| Symbol | Action | Result | Thesis Outcome |
|--------|--------|--------|----------------|

### What Worked
- [bullet]

### What Didn't Work
- [bullet]

### Strategy Updates for Next Week
- [bullet — or "None" if nothing to update]

### Next Week Focus
- [sectors/themes/macro events to watch]

---
```

## Step 7 — Update trading-strategy.md
If Step 6 produced any durable lessons, append them to the
"Current Lessons Learned" section of `memory/trading-strategy.md`.
