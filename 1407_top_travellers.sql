-- https://leetcode.com/problems/top-travellers/

-- Write your MySQL query statement below
SELECT
  u.name,
  SUM(IFNULL(r.distance, 0)) AS travelled_distance
FROM users u
  LEFT JOIN Rides r
  ON u.id = r.user_id
GROUP BY u.name
ORDER BY 2 DESC, 1 ASC
;
