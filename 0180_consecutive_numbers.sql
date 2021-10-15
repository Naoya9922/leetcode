# https://leetcode.com/problems/consecutive-numbers/

# Write your MySQL query statement below
SELECT
  DISTINCT Num AS ConsecutiveNums
FROM
  (
  SELECT
    Num,
    LAG(Num) OVER() AS LagNum,
    LEAD(Num) OVER() AS LeadNum
  FROM Logs
) tmp
WHERE Num = LagNum
  AND LagNum = LeadNum
;
