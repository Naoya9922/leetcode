-- https://leetcode.com/problems/capital-gainloss/

-- Write your MySQL query statement below
SELECT
  stock_name,
  SUM(CASE operation
        WHEN 'Buy' THEN price * -1
        ELSE price
      END
      ) AS capital_gain_loss
FROM Stocks
GROUP BY 1
ORDER BY 2 DESC
;
