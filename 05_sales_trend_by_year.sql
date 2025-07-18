-- ⑤ 销售趋势：按年份（兼容 CSV 数据源）
SELECT 
  SUBSTRING("Order Date", 7, 4) AS year,
  ROUND(SUM("Sales"), 2) AS sales,
  ROUND(SUM("Profit"), 2) AS profit
FROM "Superstore"
GROUP BY year
ORDER BY year;
