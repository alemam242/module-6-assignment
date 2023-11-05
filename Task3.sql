SELECT c.name AS category_name, SUM(oi.qty * oi.price) AS total_revenue
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.id
JOIN Categories c ON p.category_id = c.id
GROUP BY c.id
ORDER BY total_revenue DESC;