-- https://leetcode.com/problems/article-views-i/

-- Write your MySQL query statement below
SELECT
  DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id
;
