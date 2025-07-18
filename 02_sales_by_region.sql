-- ② 各地区销售与利润（含利润率）
SELECT 
  "Region",
  ROUND(SUM("Sales"), 2) AS sales,
  ROUND(SUM("Profit"), 2) AS profit,
  ROUND(SUM("Profit") / NULLIF(SUM("Sales"), 0), 4) AS profit_margin
FROM "Superstore"
GROUP BY "Region"
ORDER BY profit DESC;
