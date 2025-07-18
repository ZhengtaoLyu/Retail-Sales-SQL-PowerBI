-- ⑨ 折扣水平 vs 利润分析（促销有效性）
SELECT 
  ROUND("Discount", 2) AS discount_level,
  COUNT(*) AS order_count,
  ROUND(SUM("Sales"), 2) AS total_sales,
  ROUND(SUM("Profit"), 2) AS total_profit,
  ROUND(SUM("Profit") / NULLIF(SUM("Sales"), 0), 4) AS profit_margin
FROM "Superstore"
GROUP BY discount_level
ORDER BY discount_level;
