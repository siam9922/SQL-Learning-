/* ==============================================================================
   SQL DATA MANIPULATION LANGUAGE PRACTICE
-------------------------------------------------------------------------------
   Topics:
     1. INSERT
     2. UPDATE
     3. DELETE

   Goal:
     Practice adding, changing, and removing records from tables.
=================================================================================
*/


-- Example Syntax

-- INSERT INTO practice_customers (id, first_name, country, score)
-- VALUES 
--     (2, 'Alex', 'USA', 300),
--     (3, 'Mina', 'UK', 450)


-- UPDATE practice_customers
-- SET score = 0,
--     country = 'UK'
-- WHERE id = 3;

-- DELETE FROM practice_customers
-- WHERE score < 100;


/* ==============================================================================
   INSERT PRACTICE
=============================================================================== */

-- Before Practice 

-- CREATE TABLE practice_customers (
--     id INT PRIMARY KEY,
--     first_name VARCHAR(50),
--     country VARCHAR(50),
--     score INT
-- );

-- CREATE TABLE practice_persons (
--     id INT PRIMARY KEY,
--     person_name VARCHAR(50),
--     birth_date DATE,
--     phone VARCHAR(15)
-- );




-- 1. Insert one new record into the practice_customers table.
-- Columns:
-- id = 1
-- first_name = 'Siam'
-- country = 'Canada'
-- score = 500


-- INSERT INTO practice_customers(id, first_name, country, score)
-- VALUES
-- 	(1, 'Siam', 'Canada', 500)



-- 2. Insert two new records into the practice_customers table in one INSERT statement.
-- Record 1:
-- id = 2
-- first_name = 'Alex'
-- country = 'USA'
-- score = 300
--
-- Record 2:
-- id = 3
-- first_name = 'Mina'
-- country = 'UK'
-- score = 450

-- INSERT INTO practice_customers(id, first_name, country, score)
-- VALUES
-- 	(2, 'Alex', 'USA', 300),
-- 	(3, 'Mina', 'UK', 450)


-- 3. Insert a new record into practice_customers using only id and first_name.
-- Columns:
-- id = 4
-- first_name = 'Omar'
-- Let country and score become NULL or default values.

-- INSERT INTO practice_customers(id, first_name, country, score)
-- VALUES
-- 	(4, 'Omar', NULL, NULL)


-- 4. Insert one new record into practice_customers where the score is NULL.
-- Columns:
-- id = 5
-- first_name = 'Sara'
-- country = 'Germany'
-- score = NULL


-- INSERT INTO practice_customers(id, first_name, country, score)
-- VALUES
-- 	(5, 'Sara', 'Germany', NULL)

	

-- 5. Insert data into practice_persons using SELECT from practice_customers.
-- Copy:
-- id into id
-- first_name into person_name
-- NULL into birth_date
-- 'Unknown' into phone


-- INSERT INTO practice_persons(id, person_name, birth_date, phone)
-- SELECT
-- 	id, 
-- 	first_name,
-- 	NULL,
-- 	'Unknown'
-- FROM practice_customers 
