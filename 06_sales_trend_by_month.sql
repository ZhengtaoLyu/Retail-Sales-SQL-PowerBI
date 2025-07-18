-- ⑥ 销售趋势：按年月（兼容 CSV 数据源）
SELECT 
  SUBSTRING("Order Date", 7, 4) || '-' || SUBSTRING("Order Date", 1, 2) AS year_month,
  ROUND(SUM("Sales"), 2) AS sales,
  ROUND(SUM("Profit"), 2) AS profit
FROM "Superstore"
GROUP BY year_month
ORDER BY year_month;
