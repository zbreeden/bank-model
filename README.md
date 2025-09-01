# GECU Interview — "The Bank" Mini Dashboards

Three razor-thin dashboards designed as props for the GECU **Delivery Analyst** phone screen.  
Each module can be demoed in 2–3 minutes to show clarity, structure, and delivery discipline.

---

## 📂 Project Structure
- **Module 1 — Delivery Readiness Dashboard**  
  - Charts: Throughput, Lead Time, Cycle Time  
  - KPIs: WIP, On-time %, Defect Escape Rate  
  - Filter: Initiative (ACH Dispute, Loan App Funnel)
  - Data: delivery_readiness_weekly.csv

- **Module 2 — Requirements → Release Traceability**  
  - Epic → Story → Acceptance Criteria → Tests → Data Impact → Compliance → Release ID
  - Data: traceability.csv  
  - Example stories:
    - ACH Dispute Status (Reg E)
    - Loan Doc Checklist (GLBA)

- **Module 3 — Risk & Decision Log**  
  - Track Risks (impact, likelihood, mitigation) and Decisions (rationale, owner, next review)
  - Data: risk_decision_log.csv 
  - Example entries:
    - Risk: PII exposure in exports  
    - Risk: Vendor API rate limits  
    - Decision: WIP capped at 5 per squad

---

## 📊 Data

- Delivery Readiness (weekly): delivery_readiness_weekly.csv
Fields: week_start, initiative, squad, wip, wip_cap, throughput, lead_time_days_avg, cycle_time_days_avg, on_time_deliveries, on_time_percent, defect_count, defect_escape_count, defect_escape_rate, blocked_items

- Requirements→Release Traceability: traceability.csv
Columns link epic → story → acceptance_criteria → test_cases → data_impact → compliance_tags → release_id/release_date/status
Includes examples: ACH Dispute Status (Reg E) and Loan Doc Checklist (GLBA).

- Risk & Decision Log: risk_decision_log.csv
Mix of Risks (with impact, likelihood, risk_score) and Decisions (with rationale and next review).

## 🚀 How to Run
This project uses **React**, **Tailwind**, **shadcn/ui**, and **Recharts**.

1. Install dependencies:
   bash-5.3$ npm install
2. Start development server:
   bash-5.3$ npm run dev
3. Open browser to http://localhost:5173/ (or as prompted)

##🎤 Suggested Demo Flow
When screen-sharing or describing:

1. Delivery Readiness
   * “Here’s how I track flow stability: WIP, throughput, lead/cycle time, on-time %, and defect escape. You can see WIP capped at 5 improves lead time.”

https://app.powerbi.com/reportEmbed?reportId=5ccf2c2f-2272-4165-a6a3-3d5a528a4be7&autoAuth=true&ctid=dc1332eb-e1d9-4c3f-8456-0ab8e38f68b6

2. Traceability
   *“Each story links to acceptance criteria, test cases, data impact, and compliance tags. For example, ACH status is tagged Reg E and tested end-to-end.”

3. Risks & Decisions
   *“I log risks like PII exposure, with mitigation steps, and decisions like WIP limits. This keeps compliance, ops, and delivery transparent.”

--> Keep this to ~6 sentences total — short, punchy, and confident.

##🧩 Customization
- Update deliveryFlow array to adjust throughput/WIP metrics.
- Edit traceability array to add/remove stories.
- Add risks/decisions in the risks array.
- Change initiative names in the initiatives array.

##📌 Tips for Interview Use
- Keep the dashboard open in 3 tabs (Delivery, Traceability, Risk).
- Lead with Delivery → Traceability → Risk (in that order).
- Use one credit-union–flavored caselet (ACH or Loan Funnel) as your anchor story.
- Close with a question: “Which outcome metrics matter most for delivery success at GECU?”

##📄 License
- For interview/demo purposes only.
