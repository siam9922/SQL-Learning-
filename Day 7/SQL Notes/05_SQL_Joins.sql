
-- SQL JOIN BASICS

-- JOIN are wider tables that are combined with coloumns horizontally 
-- Set operators combine rows and keep them vertically 


-- JOIN TYPES:			SET TYPES:

-- 1. INNER JOIN		- UNION
-- 2. FULL JOIN			- UNION ALL
-- 3. LEFT JOIN			- EXCEPT (MINUS)
-- 4. RIGHT JOIN		- INTERSECT
-- 5. Left Anti Join
-- 6. Right Anti Join
-- 7. Full Anti Join
-- 8. Cross Join


-- Why we use JOINS?

-- RECOMBINE DATA
-- DATA ENRICHMENT "Getting Extra Data"
-- Check Existence "Filtering"


-- Exercises 


-- 1. No Join

/* Retrieve all data from customers and order in two different results */

--SELECT * FROM customers;
--SELECT * FROM orders;


-- 2. Inner JOIN
 
 -- Get all customers along with their  orders, 
-- but only for customers who have placed an order


--SELECT 
--	c.id,
--	c.first_name,
--	o.order_id,
--	o.sales
--From customers AS c
--INNER JOIN orders AS o
--ON c.id = o.customer_id


-- 3. Left JOIN 

-- Get all customers along with their orders,
-- including those without orders


--SELECT 
--	c.id,
--	c.first_name,
--	o.order_id,
--	o.sales
--From customers AS c
--LEFT JOIN orders AS o
--ON c.id = o.customer_id


-- 4. Right Join

--Get all customers along with their orders,
--including orders without matching customers 


--SELECT 
--	c.id,
--	c.first_name,
--	o.order_id,
--	o.sales
--From customers AS c
--RIGHT JOIN orders AS o
--ON c.id = o.customer_id


-- Exercise: Get all customers along with their orders, including orders,
-- without matching customers (Using LEFT JOIN)

--SELECT 
--	c.id,
--	c.first_name,
--	o.order_id,
--	o.sales
--From orders AS o
--RIGHT JOIN customers AS c
--ON c.id = o.customer_id


-- 5. Full JOIN

-- Get all customers and all orders, even if there's no match. 


--SELECT 
--	c.id,
--	c.first_name,
--	o.order_id,
--	o.sales
--From orders AS o
--FULL JOIN customers AS c
--ON c.id = o.customer_id
