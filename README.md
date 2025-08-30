# GECU Interview — "The Bank" Mini Dashboards

Three razor-thin dashboards designed as props for the GECU **Delivery Analyst** phone screen.  
Each module can be demoed in 2–3 minutes to show clarity, structure, and delivery discipline.

---

## 📂 Project Structure
- **Module 1 — Delivery Readiness Dashboard**  
  - Charts: Throughput, Lead Time, Cycle Time  
  - KPIs: WIP, On-time %, Defect Escape Rate  
  - Filter: Initiative (ACH Dispute, Loan App Funnel)

- **Module 2 — Requirements → Release Traceability**  
  - Epic → Story → Acceptance Criteria → Tests → Data Impact → Compliance → Release ID  
  - Example stories:
    - ACH Dispute Status (Reg E)
    - Loan Doc Checklist (GLBA)

- **Module 3 — Risk & Decision Log**  
  - Track Risks (impact, likelihood, mitigation) and Decisions (rationale, owner, next review)  
  - Example entries:
    - Risk: PII exposure in exports  
    - Risk: Vendor API rate limits  
    - Decision: WIP capped at 5 per squad

---

## 🚀 How to Run
This project uses **React**, **Tailwind**, **shadcn/ui**, and **Recharts**.

1. Install dependencies:
   ```bash
   npm install
