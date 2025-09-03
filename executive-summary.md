# GECU Delivery Readiness — "The Bank" (Executive Scorecard)

> **Purpose**: Give VPs/Chiefs a 60–90 second view of delivery health and predictability. Built from simple flow signals: **WIP, Throughput, Lead/Cycle Time, On‑Time %, Defect Escape, Aging WIP**.

---

## 1) Snapshot — This Week

* **WIP (in progress)**: `__` (cap policy: `__`)
* **Throughput (done/week)**: `__`
* **Median Lead Time (days)**: `__`
* **On‑Time % (vs. committed date)**: `__`
* **Defect Escape (prod‑found/total)**: `__/__`
* **Aging WIP (>10 days)**: `__`

**Capacity vs Demand**

* **Active capacity (slots)**: `__`
* **New requests (demand)**: `__`
* **Load vs. capacity**: `__%`

> **Read it like this:** If **WIP** is at/under cap and **Throughput ≥ Demand**, lead times shrink and on‑time rises. **Aging WIP** and **Defect Escape** are early smoke.

---

## 2) Trend — Last 8–12 Weeks (for screen share)

**Lines to show**: Inflow vs. Throughput; WIP (end‑of‑week); Median Lead Time; On‑Time %; Defect Escape rate.
**Goal bands** (example): On‑Time ≥ 90%; Escape ≤ 5%; WIP cap = 5 per analyst / 20 team.

**Talking points**

* Where the lines **cross** (Demand > Throughput) is where **backlog/WIP grow**.
* When **WIP stays under cap**, note the **lead‑time improvement** and **risk reduction**.

---

## 3) Risks & Actions (current week)

* **Top blocker:** `__` → **Owner/ETA:** `__`
* **Aging item(s):** `__` (days in progress: `__`) → **next step:** `__`
* **Quality watch:** `__` (root cause hypothesis) → **containment:** `__`

---

## 4) Definitions (executive‑friendly)

* **WIP** — Items actively in progress. Capped to reduce multitasking and handoff loss.
* **Throughput** — Items finished per week (Done, meeting acceptance).
* **Lead Time** — Request received → Done. Median is robust to outliers.
* **On‑Time %** — Finished on or before the committed date.
* **Defect Escape** — Issues found after release; we track **escaped/total**.
* **Aging WIP** — In‑progress items older than 10 days (or agreed threshold).

---

## 5) Data & Audit Notes (credit‑union context)

* **Lineage**: Intake → Kanban → Definition of Done (logged) → UAT → Production.
* **Source of truth**: Kanban export + release log; timestamped and reproducible.
* **Privacy**: Member data not exposed; only delivery metadata.
* **Auditability**: Versioned dataset (CSV) + static weekly PDF renders.

---

## 6) How this helps GECU (tie to outcomes)

* **Fewer surprises** (visible capacity vs. demand).
* **Faster member outcomes** (shorter lead time/on‑time).
* **Cleaner releases** (lower escape; defects contained earlier).
* **Better trade‑off calls** (explicit what‑slips when load > capacity).

---

### Screen‑Share Script (30–60 seconds)

1. Open the scorecard → read the **Snapshot** row left‑to‑right.
2. Flip to **Trend** → point out inflection where WIP cap took effect and on‑time rose.
3. End on **Risks & Actions** → who owns what, ETA, and how risk is burning down.

---

## Appendix A — README snippet for the repo (paste into `README.md`)

```markdown
# The Bank — Delivery Scorecard

**What it is**: A lightweight, auditable view of flow health for leadership.  
**Signals**: WIP, Throughput, Lead/Cycle Time, On‑Time %, Defect Escape, Aging WIP.  
**Why it matters**: Predictable delivery → faster member outcomes, fewer escalations.

## Quick Start
1. Download `data/bank_scorecard.csv` (sample provided).  
2. Open `Power BI` (or Excel) → import the CSV.  
3. Build a simple page:
   - KPI cards: WIP, Throughput, Median Lead Time, On‑Time %, Defect Escape rate.
   - Line chart: Inflow vs Throughput (weekly); secondary line: WIP EoW.
   - Table: Capacity vs Demand (this week); list Aging WIP > 10 days.
4. (Optional) Save a weekly PDF for audit; commit to `/reports/`.

## Definitions
- **WIP**: Items actively in progress (team cap policy: e.g., 20).  
- **Throughput**: Items finished per week.  
- **Lead Time (median)**: Request → Done, in days.  
- **On‑Time %**: Delivered on/before committed date.  
- **Defect Escape**: Prod‑found defects / total defects.  
- **Aging WIP**: In progress > 10 days.

## Governance
- **Lineage**: Kanban export + release notes → weekly roll‑up.  
- **Privacy**: No member PII; delivery metadata only.  
- **Versioning**: Data and weekly PDF checked into repo.
```

---

> **Tip**: If you already have a Power BI page, just relabel visuals to these exact executive terms and cap WIP visually (horizontal line).
