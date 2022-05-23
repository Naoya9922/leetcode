-- https://leetcode.com/problems/market-analysis-i/

-- Write your MySQL query statement below
SELECT
  user_id AS buyer_id,
  join_date,
  IFNULL(orders_in_2019, 0) AS orders_in_2019
FROM Users u
LEFT JOIN
(
  SELECT
    buyer_id,
    count(*) AS orders_in_2019
  FROM Orders
  WHERE YEAR(order_date) = '2019'
  GROUP BY 1
) b
ON u.user_id = b.buyer_id
;
