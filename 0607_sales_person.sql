-- https://leetcode.com/problems/sales-person/

-- Write your MySQL query statement below
SELECT
  name
FROM SalesPerson
WHERE name NOT IN
(
  SELECT
    S.name
  FROM SalesPerson S
  INNER JOIN Orders O
    ON S.sales_id = O.sales_id
  INNER JOIN Company C
    ON  O.com_id = C.com_id
  WHERE C.name = 'RED'
)
;
