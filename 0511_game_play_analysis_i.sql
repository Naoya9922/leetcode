-- https://leetcode.com/problems/game-play-analysis-i/
-- Write your MySQL query statement below

SELECT DISTINCT
  player_id,
  MIN(event_date) OVER(PARTITION BY player_id ORDER BY player_id) AS first_login
FROM Activity
;
