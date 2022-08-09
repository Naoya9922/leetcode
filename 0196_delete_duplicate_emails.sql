-- https://leetcode.com/problems/delete-duplicate-emails/

-- Please write a DELETE statement and DO NOT write a SELECT statement.
-- Write your MySQL query statement below
DELETE
  p1
FROM Person p1
WHERE p1.id NOT IN
(
  SELECT
    MIN(p2.id) OVER(PARTITION BY p2.email) AS id
  FROM (SELECT * FROM Person) p2
)
;
