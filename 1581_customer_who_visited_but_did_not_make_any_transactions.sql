-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

-- Write your MySQL query statement below
SELECT
  v.customer_id,
  count(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
  ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY 1
;
