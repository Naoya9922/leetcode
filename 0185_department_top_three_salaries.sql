-- https://leetcode.com/problems/department-top-three-salaries/

-- Write your MySQL query statement below
SELECT
  Department,
  Employee,
  Salary
FROM
  (
  SELECT
    D.Name AS Department,
    E.Name AS Employee,
    E.Salary,
    DENSE_RANK() OVER(PARTITION BY DepartmentId ORDER BY E.Salary DESC) AS RANKING
  FROM Employee E
    INNER JOIN Department D
    ON E.DepartmentId = D.Id
) tmp
WHERE RANKING <= 3
;
