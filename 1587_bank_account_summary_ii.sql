-- https://leetcode.com/problems/bank-account-summary-ii/

-- Write your MySQL query statement below
SELECT
  u.name,
  SUM(t.amount) AS balance
FROM Users u
INNER JOIN Transactions t
  ON u.account = t.account
GROUP BY 1
HAVING SUM(t.amount) >= 10000
;
