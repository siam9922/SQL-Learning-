/* ==============================================================================
   SQL WARM-UP REVIEW
   Topics: SELECT, WHERE, ORDER BY, GROUP BY, HAVING, DISTINCT, LIMIT,
           CREATE TABLE, ALTER TABLE, DROP TABLE
   Database: dvdrental
================================================================================= */


/* ==============================================================================
   QUESTION 1 — COMBINED SELECT QUERY
=============================================================================== */

-- Retrieve each film rating and the average rental rate.
-- Only include films where the rental_rate is greater than 2.
-- Group the results by rating.
-- Only show ratings where the average rental_rate is greater than 3.
-- Sort the results by the highest average rental_rate first.
-- Show rating and avg_rental_rate.



-- SELECT rating, ROUND(AVG(rental_rate), 2) AS average_price
-- FROM film
-- WHERE rental_rate > 2 
-- GROUP BY rating
-- HAVING AVG(rental_rate) > 3
-- ORDER BY AVG(rental_rate) DESC



/* ==============================================================================
   QUESTION 2 — CREATE + ALTER
=============================================================================== */

-- Create a table called practice_movies.
-- Columns:
-- movie_id should be an INT and the primary key.
-- title should be VARCHAR(100) and cannot be NULL.
-- rating should be VARCHAR(10).
-- rental_price should be DECIMAL(4,2) and must be greater than 0.
--
-- After creating the table, alter it by adding a new column called release_year.
-- release_year should be an INT.


-- CREATE TABLE practice_movies(
-- 	movie_id INT PRIMARY KEY,
-- 	title VARCHAR(100) NULL,
-- 	rating VARCHAR(10),
-- 	rental_price DECIMAL(4, 2) CHECK(rental_price > 0)
-- );

-- ALTER TABLE practice_movies
-- ADD release_year INT

/* ==============================================================================
   QUESTION 3 — ALTER + DROP
=============================================================================== */

-- Create a table called practice_customers.
-- Columns:
-- customer_id should be an INT and the primary key.
-- first_name should be VARCHAR(50) and cannot be NULL.
-- email should be VARCHAR(100) and must be unique.
--
-- Then alter the table by adding a phone column.
-- phone should be VARCHAR(15).
--
-- Then drop the phone column.
--
-- Finally, drop the entire practice_customers table.



-- CREATE TABLE practice_customers(
-- 	customer_id INT PRIMARY KEY,
-- 	first_name VARCHAR(50) NULL,
-- 	email VARCHAR(100) UNIQUE
-- );


-- ALTER TABLE practice_customers
-- ADD phone VARCHAR(15)

-- ALTER TABLE practice_customers
-- DROP phone 


-- DROP TABLE practice_customers

 -- DROP TABLE practice_movies
