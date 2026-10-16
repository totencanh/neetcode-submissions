-- Write your query be
WITH rank_table AS (
    SELECT student_id,
    exam_id,
    score,
    ROW_NUMBER() OVER (PARTITION BY student_id ORDER BY score DESC,exam_id ASC) AS rank
    FROM exam_results
)
SELECT
    student_id,
    exam_id,
    score
FROM rank_table
WHERE rank = 1
ORDER BY student_id ASC