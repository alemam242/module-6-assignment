SELECT c.name AS customer_name, SUM(oi.qty * oi.price) AS total_purchase_amount
FROM Customers c
JOIN Orders o ON c.id = o.customer_id
JOIN Order_Items oi ON o.id = oi.order_id
GROUP BY c.id
ORDER BY total_purchase_amount DESC
LIMIT 5;