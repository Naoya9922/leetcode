-- https://leetcode.com/problems/employees-with-missing-information/

-- Write your MySQL query statement below
SELECT
  employee_id
FROM
  (
    SELECT
      employee_id
    FROM employees
    WHERE employee_id NOT IN (
      SELECT DISTINCT employee_id
      FROM Salaries
    )
    UNION ALL
    SELECT
      employee_id
    FROM Salaries
    WHERE employee_id NOT IN (
      SELECT DISTINCT employee_id
    FROM employees
    )
) u
ORDER BY employee_id ASC
;
