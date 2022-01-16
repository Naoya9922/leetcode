# https://leetcode.com/problems/exchange-seats/

# Write your MySQL query statement below
SELECT
  id,
  CASE
    WHEN MOD(id, 2) = 0
      THEN lag(student) OVER (ORDER BY id)
    ELSE
      CASE
        WHEN lead(student) OVER (ORDER BY id) IS NULL
          THEN student
        ELSE
          lead(student) OVER (ORDER BY id)
      END
  END AS student
FROM Seat
;