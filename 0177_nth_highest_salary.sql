-- https://leetcode.com/problems/nth-highest-salary/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
    -- Write your MySQL query statement below.
    SELECT
      salary
    FROM
    (
      SELECT
        DENSE_RANK() OVER(ORDER BY salary DESC) AS rank_result,
        salary
      FROM Employee
    ) tmp
    WHERE rank_result = N
    GROUP BY 1
  );
END
