/*
Task 1 SQL 
Im using POSTGRESQL to create my query
*/

--Select  create date and average Daily Average Orders Processing Time 
SELECT DISTINCT
    ed.created, 
    AVG(DATE_PART('hour', picked_up::DATE) -
    DATE_PART('hour', packed::DATE)) AS Daily_AVG_Orders_Processing_Time

-- From delivery table (alias as ed)
FROM ecom_delivery AS ed
  -- Left join with orders table (alias as eo)
LEFT JOIN ecom_orders AS eo
-- Match on orders field
 ON ed.order_number = eo.order_id

-- Focus on  orders not canceled and last two weeks
WHERE units_cancelled = 0 AND 
    date between ed.created(now(),INTERVAL 2 WEEK) AND now()
    
-- Group by order creation date
GROUP BY ed.created
-- Order by order creation date in descending order
ORDER BY ed.created DESC;


