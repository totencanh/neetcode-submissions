WITH view_table AS ((
    SELECT customer_id
    FROM orders
    WHERE product_name = 'A'
)
INTERSECT
(
    SELECT customer_id
    FROM orders
    WHERE product_name = 'B'
)
EXCEPT
(
    SELECT customer_id
    FROM orders
    WHERE product_name = 'C'
))
SELECT c.customer_id,
        customer_name
FROM view_table v
JOIN customers c
ON v.customer_id = c.customer_id
ORDER BY c.customer_name