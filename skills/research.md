# Research Skill

## Purpose
Guide pre-market research to identify trade opportunities and assess existing positions.
Follow this skill exactly during every pre-market routine.

## Step 1 — Market Overview
WebSearch: "stock market futures today [today's date]"
Note: market direction, VIX level, any major overnight news.

## Step 2 — Earnings Calendar
WebSearch: "stocks reporting earnings this week [week dates]"
List all tickers reporting this week — these are OFF LIMITS for new buys this week.

## Step 3 — Macro Events
WebSearch: "economic calendar this week [week dates]"
Note: Fed decisions, CPI/PPI releases, jobs reports. These affect broad market moves.

## Step 4 — Identify 3–5 Candidates
For each candidate stock you're considering:

**Revenue Growth Check:**
WebSearch: "[TICKER] revenue growth last quarter [year]"
Require: >15% YoY revenue growth. If below, skip this stock.

**Moat Check:**
WebSearch: "[TICKER] competitive advantage moat analysis"
Require: clear articulation of at least one moat type (brand/network/switching/cost).

**Analyst Consensus:**
WebSearch: "[TICKER] analyst rating price target [year]"
Note consensus rating and median price target.

**Market Cap Check:**
Require: market cap > $1B. If smaller, skip.

**Earnings Date:**
Confirm ticker is NOT reporting earnings this week (from Step 2 list).

## Step 5 — Existing Position Review
For each open position in portfolio.md:
WebSearch: "[TICKER] news today"
Note any material developments that affect the thesis.

## Output Format
Append to memory/research-log.md:

```
## Research — [YYYY-MM-DD]

### Market Conditions
[2-3 sentences: futures direction, VIX, overnight news]

### SPY Reference Price
[Record current SPY price if Monday]

### Earnings This Week — Do Not Buy
- [TICKER] — [company name] — reports [day]
- [TICKER] — [company name] — reports [day]

### Watchlist for Tomorrow's Open
| Symbol | One-Line Thesis | Rev Growth | Moat Type | Analyst Rating | Action |
|--------|-----------------|------------|-----------|----------------|--------|
| [TICKER] | [thesis] | [%] | [type] | [Buy/Hold/Sell] | [Buy at open / Watch / Skip] |

### Existing Position Notes
| Symbol | News | Thesis Still Valid? | Action |
|--------|------|---------------------|--------|
```
