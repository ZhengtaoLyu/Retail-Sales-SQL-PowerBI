-- ⑦ 哪些地区/产品线亏损？（亏损产品线）
SELECT 
  "Category", "Sub-Category",
  ROUND(SUM("Profit"), 2) AS total_profit
FROM "Superstore"
GROUP BY "Category", "Sub-Category"
HAVING SUM("Profit") < 0
ORDER BY total_profit ASC;
