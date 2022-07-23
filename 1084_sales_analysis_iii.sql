-- https://leetcode.com/problems/sales-analysis-iii/

-- Write your MySQL query statement below
SELECT
  product_id,
  product_name
FROM
  (
  SELECT
    p.product_id,
    p.product_name,
    MIN(s.sale_date) AS min_date,
    MAX(s.sale_date) AS max_date
  FROM Product p
    INNER JOIN Sales s
    ON p.product_id = s.product_id
  GROUP BY 1,2
) t
WHERE t.min_date BETWEEN '2019-01-01' AND '2019-03-31'
  AND t.max_date BETWEEN '2019-01-01' AND '2019-03-31'
;
