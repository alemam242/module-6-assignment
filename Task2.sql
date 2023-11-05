SELECT p.name AS product_name, oi.qty, (oi.qty * oi.price) AS total_amount
FROM Order_Items oi
JOIN Products p ON oi.id = p.id
ORDER BY oi.order_id ASC;