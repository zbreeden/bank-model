-- Table example: dbo.work_items(id, created_at, completed_at, committed_date, is_defect bit, escaped_flag bit)
WITH weeks AS (
  SELECT CAST(DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE())-11, 0) AS date) AS week_start
  UNION ALL
  SELECT DATEADD(WEEK, 1, week_start) FROM weeks
  WHERE week_start < CAST(DATEADD(WEEK, DATEDIFF(WEEK,0,GETDATE()), 0) AS date)
),
bounds AS (
  SELECT week_start, DATEADD(DAY,6,week_start) AS week_end FROM weeks
)
SELECT
  b.week_start,
  SUM(CASE WHEN wi.created_at BETWEEN b.week_start AND b.week_end THEN 1 ELSE 0 END) AS inflow,
  SUM(CASE WHEN wi.completed_at BETWEEN b.week_start AND b.week_end THEN 1 ELSE 0 END) AS throughput,
  SUM(CASE WHEN wi.created_at <= b.week_end AND (wi.completed_at IS NULL OR wi.completed_at > b.week_end) THEN 1 ELSE 0 END) AS wip_eow,
  /* median lead time (days) for items completed this week */
  CAST((
    SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY DATEDIFF(DAY, x.created_at, x.completed_at))
    FROM dbo.work_items x
    WHERE x.completed_at BETWEEN b.week_start AND b.week_end
  ) AS int) AS lead_time_median_days,
  /* on-time % for items completed this week */
  CAST(100.0 * SUM(CASE WHEN wi.completed_at BETWEEN b.week_start AND b.week_end AND wi.completed_at <= wi.committed_date THEN 1 ELSE 0 END)
      / NULLIF(SUM(CASE WHEN wi.completed_at BETWEEN b.week_start AND b.week_end THEN 1 ELSE 0 END),0) AS int) AS on_time_pct,
  SUM(CASE WHEN wi.completed_at BETWEEN b.week_start AND b.week_end AND wi.is_defect=1 THEN 1 ELSE 0 END) AS defects_total,
  SUM(CASE WHEN wi.completed_at BETWEEN b.week_start AND b.week_end AND wi.is_defect=1 AND wi.escaped_flag=1 THEN 1 ELSE 0 END) AS defects_escaped,
  SUM(CASE WHEN wi.created_at <= DATEADD(DAY,-10,b.week_end) AND (wi.completed_at IS NULL OR wi.completed_at > b.week_end) THEN 1 ELSE 0 END) AS aging_wip_gt_10d,
  /* often same as inflow */
  SUM(CASE WHEN wi.created_at BETWEEN b.week_start AND b.week_end THEN 1 ELSE 0 END) AS demand,
  20 AS capacity_slots  -- or join a capacity table
FROM bounds b
LEFT JOIN dbo.work_items wi
  ON wi.created_at <= b.week_end OR wi.completed_at BETWEEN b.week_start AND b.week_end
GROUP BY b.week_start
ORDER BY b.week_start
OPTION (MAXRECURSION 0);
