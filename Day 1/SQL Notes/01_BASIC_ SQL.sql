-- =========================
-- DATABASE
-- =========================

USE MyDatabase;


-- =========================
-- SELECT QUERIES 
-- =========================

--1. Customers table

--SELECT * 
--FROM customers;

-- 2. Orders table

--SELECT * 
--FROM orders;


-- 3. With Coloumns 

--SELECT
--    first_name,
--    country,
--    score
--FROM customers;


-- 4. Where clause

--SELECT * 
--FROM customers
--WHERE score != 0; 

--SELECT * 
--FROM customers 
--WHERE country = 'Germany'; 

--SELECT 
--	first_name, 
--	country
--FROM customers 
--WHERE country = 'Germany'; 


-- 5 Order By

--SELECT * 
--FROM customers
--ORDER BY score DESC;

--SELECT * 
--FROM customers
--ORDER BY score ASC;

--SELECT * 
--FROM customers
--ORDER BY country ASC, score DESC; 


-- 7. Group By 

--SELECT 
--	country, 
--	SUM(score) AS total_score 
--FROM customers
--GROUP BY country

--SELECT 
--	country, 
--	SUM(score) AS total_score 
--FROM customers
--GROUP BY country, first_name 

--SELECT 
--	country, 
--	SUM(score) AS total_score 
-- COUNT(id) AS total_customers
--FROM customers
--GROUP BY country


-- 7. Having 

--SELECT 
--	country, 
--	Avg(score) AS avg_score
--FROM customers
--WHERE score != 0 
--GROUP BY country
--HAVING AVG(score) > 430;


-- 8. DISTINCT

--SELECT DISTINCT country
--FROM customers;


-- 9. Top (limit)

--SELECT TOP 3 * 
--FROM customers

--SELECT TOP 3 *
--FROM customers
--ORDER BY score DESC

--SELECT TOP 3 *
--FROM customers
--ORDER BY score ASC

--SELECT TOP 2 *
--FROM orders
--ORDER BY order_date DESC
