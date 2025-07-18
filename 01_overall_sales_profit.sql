-- ① 总销售额、总利润、利润率
SELECT 
  ROUND(SUM("Sales"), 2) AS total_sales,
  ROUND(SUM("Profit"), 2) AS total_profit,
  ROUND(SUM("Profit") / NULLIF(SUM("Sales"), 0), 4) AS profit_margin
FROM "Superstore";
