# Portfolio

**Last Updated:** 2026-06-03 (market close routine — Wednesday)
**Account:** Alpaca Paper Trading
**Endpoint:** https://paper-api.alpaca.markets

## Account Summary
- Cash: $83,381.95
- Total Portfolio Value (close 6/3): **$99,584.60**
- Invested (long_market_value): $16,202.65 (16.27%)
- Cash Reserve: $83,381.95 (83.73%)
- **Day Open Value (6/3):** $99,726.59 → **Close $99,584.60 = −$141.99 / −0.142% on the day**. Daily-loss cap (−3%) NOT triggered.
- **Week Start SPY (6/1):** $757.58 (Fri 5/29 close — carried as Week Start reference); **Wed 6/3 SPY close: $759.21 (−0.047% day, +0.215% WTD)**
- **Day 3 of week vs SPY: −0.095%** (UNDERPERFORMED slightly — much narrower gap than days 1/2; best relative day of week 3)
- New positions this week (6/1–6/5): **0 of 3** (no buys today)
- Daytrade count: 0

## Open Positions (6/3 market-close snapshot)

| Symbol | Shares | Avg Entry | Current Price | Market Value | Total P&L $ | Total P&L % | Day Change | Trailing Stop |
|--------|--------|-----------|---------------|--------------|-------------|-------------|------------|---------------|
| AMZN | 18 | $267.81 | $249.64 | $4,493.52 | −$327.06 | −6.79% | −2.68% | 10% trail (hwm $274.75 → stop $247.275, **~0.95% cushion — thinnest in book by far, ~$2.37/sh from trigger**) |
| ISRG | 9 | $425.163 | $407.29 | $3,665.61 | −$160.86 | −4.20% | +1.24% | 10% trail (hwm $425.93 → stop $383.337, ~5.88% cushion) |
| LLY | 4 | $992.355 | $1,078.78 | $4,315.12 | +$345.70 | +8.71% | +1.38% | 10% trail (hwm $1,149.10 → stop $1,034.19, ~4.13% cushion) |
| META | 6 | $606.73 | $621.40 | $3,728.40 | +$88.02 | +2.42% | +3.98% | 10% trail (hwm $643.00 → stop $578.70, ~6.87% cushion) |

*(Closing prices from Alpaca positions endpoint at market-close routine. All 4 trailing stops verified live & GTC; none triggered today. GOOGL was stopped out Tue 6/2 — see Realized Trades section below.)*

## Week Tracking

**Week 1 (5/18–5/22) — FINAL:**
- Week Start Value: $100,000.00 → Friday 5/22 Close: $100,161.50 = **+0.16%**
- Week Start SPY: $739.17 (5/15 close ref) → Friday 5/22 Close: $745.64 = **+0.875%**
- Relative: portfolio **−0.71% vs SPY** (UNDERPERFORMED).
- New Positions: 3 of 3 (GOOGL/META/LLY).

**Week 2 (5/26–5/29) — FINAL:**
- Week Start Value: $100,161.50 → Fri 5/29 Close: $100,476.48 = **+0.314%**
- Week Start SPY: $745.64 → Fri 5/29 Close: $757.58 = **+1.601%**
- Relative: portfolio **−1.29% vs SPY** (UNDERPERFORMED).
- New Positions: 2 of 3 (AMZN 5/26 + ISRG 5/29).

**Current Week (6/1–6/5) — IN PROGRESS:**
- Week Start Value: $100,474.93 (Fri 5/29 close, carried as Mon 6/1 open ref).
- Week Start SPY: $757.58 (Fri 5/29 close).
- **Mon 6/1 close:** Portfolio $99,874.11 (−0.598% day) vs SPY $758.44 (+0.114% day) → portfolio **−0.71% vs SPY (UNDERPERFORMED)**.
- **Tue 6/2 close:** Portfolio $99,726.59 (−0.148% day; net of GOOGL stop-out realized −$361.19) vs SPY $759.57 (+0.149% day) → portfolio **−0.30% vs SPY (UNDERPERFORMED)**.
- **Wed 6/3 close:** Portfolio $99,584.60 (−0.142% day) vs SPY $759.21 (−0.047% day) → portfolio **−0.095% vs SPY (UNDERPERFORMED — narrowest gap of week)**. META +3.98% strong rebound day (vs Mon's −5.14%); LLY +1.38% pre-ADA bid; ISRG +1.24% re-asserted non-correlation; AMZN −2.68% to fresh low for the position (cushion now 0.95%).
- **WTD:** Portfolio −0.886% (= $99,584.60 / $100,474.93 − 1) vs SPY +0.215% → **−1.10% WTD vs SPY**.
- New Positions This Week: 0 of 3 (no buys 6/1, 6/2, 6/3 per plan).
- Daily Loss Today: −0.142% — no daily loss; −3% cap not triggered.

## Realized Trades This Week
- **GOOGL stop-out (Tue 6/2):** Trailing stop fired at $361.877 (price gapped through $367.749 stop ~6 min after open). 10 shares × ($361.877 − $397.996) = **−$361.19 realized (−9.07%)**. Cash +$3,618.77. Stop order ID `87d839eb` consumed. Removed the persistent cohort laggard from the book.

## Notes

### Market Close Routine — 2026-06-03 (Wednesday)
- **Close:** Portfolio $99,584.60 vs Day Open Ref $99,726.59 = **−0.142% day**; daily-loss cap (−3%) NOT triggered.
- **vs SPY today:** Portfolio −0.142% vs SPY −0.047% ($759.57 → $759.21) → **−0.095% vs SPY (UNDERPERFORMED, narrowly)**. Day 3 of week 3. This is the **narrowest relative-loss day of week 3** and the first session in 5 sessions where the book didn't lose ≥0.30% vs SPY.
- **Tape:** SPY drifted lower (−0.047%) after a record close Tuesday; intraday range $755.41–$760.29. ADP Employment 8:15 AM ET + ISM Services 10:00 AM ET were the data prints. AVGO + CRWD + VEEV + MDT report after close today — AI-cohort tape risk overnight.
- **No new buys today** — KKR / V deferral honored per morning plan (option b). Decision tree set up by morning research read the post-print tape as "not constructive enough" to deploy. Wait-and-see into NFP Friday remains the operative stance.
- **AMZN: cushion narrowed to 0.95%** ($2.37/sh from trigger). Down −2.68% intraday on no single-name catalyst — gave back ~all of late-May's AWS-retail-AI/Globalstar rally. Did NOT hit the >7% intraday cut threshold (down 2.68%). Single biggest position-risk going into tomorrow. **The −10% trailing stop is essentially live.** Open question for tomorrow morning: if AMZN gaps lower, stop will fill near $247; if it bounces, cushion repairs. Thesis (AWS retail-AI, Globalstar/satellite, Prime Day 6/23–26) intact.
- **META: +3.98% intraday — strongest in book.** Erased most of Monday's −5.14%; cushion expanded back to 6.87% (from 3.55% Mon close). Subscription/AI-tier thesis quietly re-confirmed; EU WhatsApp antitrust investigation overhang acknowledged but not market-moving today. **No action; let it run.**
- **LLY: +1.38%** into pre-ADA bid. Stop unchanged $1,034.19; cushion 4.13% (from 4.44% Mon). HWM still $1,149.10. Pre-ADA Saturday 6/6 symposium discipline holds — **no trim ahead of catalyst**.
- **ISRG: +1.24%** — fully re-asserted its non-correlation thesis after Monday's failure (−2.92% on a +0.11% index day). Stop cushion 5.88%. Two June catalysts (da Vinci 5 + Japan reimbursement) ahead. Diversifier doing its job today.
- **All 4 remaining trailing stops verified live, GTC, no triggers, no replacements** (order IDs unchanged: AMZN `4742e5a0`, ISRG `b271eef3`, LLY `28f47c51`, META `566b9e93`).
- **Pattern read for the week:** day 1 −0.71%, day 2 −0.30%, day 3 −0.095% vs SPY. **The relative bleed is narrowing.** With GOOGL (the persistent laggard) cut and META/ISRG rebounding, the book is now structurally less cohort-correlated. If Thursday holds flat to positive vs SPY, the underperformance pattern may be breaking.

### Trailing Stops (verified, live on Alpaca — close 6/3)
- **AMZN** hwm $274.75 → stop $247.275 (**~0.95% cushion at $249.64 close — thinnest, ~$2.37/sh from trigger**). Order ID: `4742e5a0-e64f-454b-8b3d-20fce42bc734`.
- **ISRG** hwm $425.93 → stop $383.337 (~5.88% cushion at $407.29 close). Order ID: `b271eef3-1027-435e-8818-2c838e0ace9b`.
- **LLY** hwm $1,149.10 → stop $1,034.19 (~4.13% cushion at $1,078.78 close). Order ID: `28f47c51-a223-4698-9fee-867b1c411ce4`.
- **META** hwm $643.00 → stop $578.70 (~6.87% cushion at $621.40 close). Order ID: `566b9e93-4e9a-41e1-9954-08b475338ff6`.
- **GOOGL** stop `87d839eb` was filled Tue 6/2 9:36 AM ET at $361.877 — consumed.

### Earnings / Macro Flags Heading Into Tomorrow & End-of-Week
- **AC tonight (6/3):** AVGO, CRWD, VEEV, MDT — AI-cohort tape risk into Thu open.
- **Thu 6/4:** Weekly Initial Jobless Claims; Productivity & Costs final. LULU, DOCU, M report.
- **Fri 6/5 8:30 AM ET:** **NFP (May)** + Unemployment + AHE — week's main event. JOLTS hot print (7.6M vs 6.89M est) raised the bar; a hot NFP would extend the <3% rate-cut probability into year-end and pressure long-duration tech.
- **Sat 6/6 1:30–3:00 PM CDT:** LLY retatrutide Phase 3 ADA Scientific Sessions symposium — key forward catalyst for the book's strongest position.
- No FOMC this week; next meeting June 16–17 (Warsh's first as Chair). PPI (May) 6/11.
- Day-trade flag: `daytrade_count = 0`. No PDT risk — paper account.
