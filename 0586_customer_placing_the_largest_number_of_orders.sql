-- https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/

SELECT
  customer_number
FROM
  (
  SELECT
    customer_number,
    COUNT(customer_number) AS ORDER_CNT
  FROM ORDERS
  GROUP BY 1
  ORDER BY ORDER_CNT DESC
) AS c
LIMIT 1
;
