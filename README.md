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
