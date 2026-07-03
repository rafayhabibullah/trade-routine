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
- **Quarter-end / month-end / index-rebalance mechanical flows on a defensive winner held through a hawkish-data week can ratchet the HWM — do NOT manually tighten the trail on the same-day spike.** Same-day reactive tightening after a +5–7% one-day move sets up a tight stop on a likely partial-consolidation print and an early exit before the next leg. The 10% trail auto-ratchets and the system works. Re-evaluation triggers to revisit a winning-position tightening are time-shifted, not same-day: (a) close above a near-term parabolic level within 2 sessions, (b) negative single-name catalyst, (c) multi-day cushion compression to <4% from current price without thesis change. Pattern observed on LLY 6/26 — a SINGLE-session DOUBLE-RATCHET: +6.99% day on Q-end → HWM $1,182.73 → $1,207.589 (midday) → $1,215.76 (afternoon), stop $1,064.457 → $1,086.83 → $1,094.184 = **+299 bps locked-in captured automatically across the day, no manual action needed**. The afternoon ratchet vindicated the midday hold-decision; the morning hold-decision would have been wrong to tighten and the system worked twice. Adds nuance to lesson #3.
- **Lesson #1 cushion-compression discretionary-trim framework — refine on catalyst proximity.** Cushion <3% INTO a binary regime data event (CPI/PPI/PCE/NFP within 1 session) is a stronger trim signal than cushion <3% in a flat-data window. ISRG Thu 6/25 closed at 2.98% cushion into PCE day and Fri 6/26 quarter-end flows; path-(a) hold-the-stop call was correct in hindsight by ~50 bps of asymmetry — narrow margin. Future framework: weight catalyst proximity into the trim decision — cushion-compression-into-binary-catalyst gets a tighter trim bias than cushion-compression-in-a-flat-data-window.
- **Defensive-cohort divergence on a binary regime data day is a one-day data point, not a thesis break.** Pharma (LLY) caught the post-PCE defensive bid Thu 6/25; medtech (ISRG) did not — divergence within the diversifier book. Wait for the next-session regime (quarter-end Fri 6/26 — BOTH caught the bid) to confirm or break the divergence before reacting. Track as a sub-cohort signal, not a single-day trigger. Adds nuance to lesson #4.
- **Binary-regime-pair NET OP finding — the cash-cushion delivers positive alpha across adjacent binary-pair weeks when BOTH tails carry defensive-bid character.** Weeks 6+7 pair = Week 6 DOWN-tape OP +2.46pp + Week 7 UP-tape UND −1.83pp = **+0.63pp NET OP** across the pair. Week 6 = US-Iran-truce flight-to-safety bid (DOWN-tape); Week 7 Thu = cool-NFP-growth-scare defensive bid on a modestly-red SPY tape (converted the week's UND from ~−2.61pp Wed close trajectory to −1.83pp Thu close). **Prior formulation revised:** structural cash-cushion is NOT breakeven vs SPY across binary regime pairs — it is NET POSITIVE when the up-tape carries defensive-bid character. Mag7-cyclical-driven UP-tapes (like Week 6→7 Mon-Wed leg) remain the pure-UND regime for the cash-cushion. Refines lesson #2.
- **Lesson #4 diversifier payoff regime expansion — extends to any "risk-off narrative that spares defensives," not just AI-cohort-specific sell-off.** Three validating regime types now confirmed empirically: (a) hard AI-cohort risk-off (Fri 6/26, ISRG catches post-PCE defensive bid); (b) modest semi-cohort rotation-into-defensives (Wed 7/1, ISRG +2.09% on semi-profit-taking Nasdaq −0.3%); (c) growth-scare defensive-bid on cool-NFP (Thu 7/2, ISRG +5.87% on modestly-red SPY). Regime scope is significantly broader than original narrow definition; the diversifier's structural role has been re-validated in three distinct macro regimes.
- **COOL NFP is NOT unambiguously risk-ON — a growth-scare-triggering cool print can pivot the tape to defensive-bid risk-OFF.** Prior playbook mapped COOL NFP → risk-ON continuation (rate-cut-back-on-table). Thu 7/2 +57k print vs consensus 113k + 74k downward revisions to prior 2 months + UNR ticked to 4.2% flipped the read to "growth-scare-driven" — bond yields rallied (rates lower) BUT equity risk-off pursued into defensives; medtech + pharma bid, semis + cyclicals faded, SPY closed modestly red. **Rule:** COOL NFP triggers the growth-scare-defensive-bid regime when print is >50k below consensus AND there are material downward revisions AND UNR upticks. This is a NEW regime path — add to the NFP playbook alongside the standard COOL → risk-ON and HOT → defensive-cohort-bid paths.
- **Lesson #3 refinement — the 7% tighten counterfactual would have SURVIVED the LLY post-DOUBLE-RATCHET consolidation cycle.** If the LLY trail had been tightened to 7% Fri 6/26 afternoon on the double-ratchet, stop would sit at $1,151 by Thu 7/2 close = ~4.9% cushion (vs actual 7.96%). The tighten would NOT have caused early exit — 3-session −3.7% consolidation was cleanly absorbed by both trails. **Refinement:** lesson #3 (do NOT tighten reactively on same-day spikes) is a probability/asymmetry claim, NOT an absolute prohibition. The 10% trail is right on average and is the default; the 7% tighten would have survived THIS cycle but would still cost incremental cushion on the next equivalent event. Keep the 10% trail default; but retire any language framing manual tightening as producing near-certain early exits.
- **Chronic V add gate deferral hitting 3 weeks + 7+ execution windows — introduce a DEFAULT-EXECUTE path to counter risk-aversion drift.** V has been deferred across Weeks 6, 7 on plan-refinement grounds; the pattern is skewing toward chronic risk-aversion. **Rule:** if a candidate is deferred across 2 consecutive weeks on PLAN-REFINEMENT grounds (not on macro-catalyst grounds), the following week's mid-morning primary window becomes a DEFAULT-EXECUTE unless a hard-deferral trigger fires (fresh single-name negative, hot-inflation shock >0.4% m/m core, cushion compression <2% on an existing position). Prevents plan-refinement discipline from calcifying into a permanent execution gap while preserving the ability to abort on real risk signals.
