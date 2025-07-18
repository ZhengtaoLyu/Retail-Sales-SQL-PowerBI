-- ④ 各产品类别销售与利润
SELECT 
  "Category",
  ROUND(SUM("Sales"), 2) AS sales,
  ROUND(SUM("Profit"), 2) AS profit
FROM "Superstore"
GROUP BY "Category"
ORDER BY profit DESC;
