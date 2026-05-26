

-- 1. Left Anti Join

-- Note: Returns Row from Left that has No Match in Right 

-- Get all customers who haven't place any order

--SELECT * 
--FROM customers As C
--LEFT JOIN orders As o
--ON c.id = o.customer_id
--WHERE o.customer_id IS NULL



-- 2. Right Anti Join

--Note: Returns Rows from Right that has No match in left 

-- Get all orders without matching customers


--SELECT * 
--FROM customers As C
--RIGHT JOIN orders As o
--ON c.id = o.customer_id
--WHERE c.id IS NULL

-- Get all orders without matching customers 


--SELECT * 
--FROM customers As O
--LEFT JOIN orders As c
--ON c.id = o.customer_id
--WHERE c_id IS NULL


-- 3. FULL Anti Join
-- Note
-- Returns only rows that dont match in either tables

--SELECT * 
--FROM orders As o 
--FULL JOIN customers AS c
--ON c.id = o.customer_id
--WHERE c.id IS NULL OR o.customer_id IS NULL


-- Exercise: Get all the customers along with their 
-- orders, but only for customers who have placed an order
-- Without using INNER JOIN!! 

--SELECT * 
--FROM customers AS c
--LEFT JOIN orders As o
--ON c.id = o.customer_id
--WHERE o.customer_id IS NOT NULL


-- 4. CROSS JOIN

--Combine Every Row from Left with Every Row from Right 
-- All possible combinations 

-- Generate all possible combinations of customers and orders.

--SELECT * 
--FROM customers 
--CROSS JOIN orders