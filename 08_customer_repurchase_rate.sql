-- ⑧ 客户回购率（订单数最高的前 20 客户）
SELECT 
  "Customer ID", "Customer Name",
  COUNT(DISTINCT "Order ID") AS order_count,
  ROUND(SUM("Sales"), 2) AS total_sales
FROM "Superstore"
GROUP BY "Customer ID", "Customer Name"
ORDER BY order_count DESC
LIMIT 20;
