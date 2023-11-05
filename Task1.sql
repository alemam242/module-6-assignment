SELECT c.*, COUNT(o.customer_id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.id
ORDER BY total_orders DESC;

