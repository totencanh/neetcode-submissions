-- Write your query below
SELECT name
FROM customers c
except (SELECT name
            FROM orders o
            JOIN customers c
            ON c.id = o.customer_id)