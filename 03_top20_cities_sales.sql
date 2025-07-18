-- ③ 城市销售前 20 强
SELECT 
  "City",
  ROUND(SUM("Sales"), 2) AS sales,
  ROUND(SUM("Profit"), 2) AS profit
FROM "Superstore"
GROUP BY "City"
ORDER BY profit DESC
LIMIT 20;
