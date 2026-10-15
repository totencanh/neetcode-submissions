-- Write your query below
SELECT
    employee_id,
    CASE
    when employee_id % 2 != 0 and name not like 'M%' then salary
    ELSE 0
    END as bonus
FROM employees
ORDER BY employee_id