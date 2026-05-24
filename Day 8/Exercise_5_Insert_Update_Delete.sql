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

-- NOTE:
-- INSERT is used to add new rows into a table.
-- The column order must match the value order.


-- UPDATE practice_customers
-- SET score = 0,
--     country = 'UK'
-- WHERE id = 3;

-- NOTE:
-- UPDATE changes existing rows.
-- WHERE is very important. Without WHERE, every row in the table can be updated.


-- DELETE FROM practice_customers
-- WHERE score < 100;

-- NOTE:
-- DELETE removes rows from a table.
-- WHERE is very important. Without WHERE, every row in the table can be deleted.


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

-- NOTE:
-- PRIMARY KEY means the id must be unique and cannot be NULL.
-- VARCHAR stores text.
-- INT stores whole numbers.


-- CREATE TABLE practice_persons (
--     id INT PRIMARY KEY,
--     person_name VARCHAR(50),
--     birth_date DATE,
--     phone VARCHAR(15)
-- );

-- NOTE:
-- DATE stores date values.
-- VARCHAR(15) is used for phone because phone numbers can contain symbols,
-- spaces, or leading zeros, so they are better stored as text.




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

-- NOTE:
-- You can insert multiple rows in one INSERT statement by separating each row with a comma.


-- 3. Insert a new record into practice_customers using only id and first_name.
-- Columns:
-- id = 4
-- first_name = 'Omar'
-- Let country and score become NULL or default values.

-- INSERT INTO practice_customers(id, first_name, country, score)
-- VALUES
-- 	(4, 'Omar', NULL, NULL)

-- NOTE:
-- NULL means missing/no value.
-- If a column is allowed to be NULL, you can manually insert NULL into it.


-- 4. Insert one new record into practice_customers where the score is NULL.
-- Columns:
-- id = 5
-- first_name = 'Sara'
-- country = 'Germany'
-- score = NULL


-- INSERT INTO practice_customers(id, first_name, country, score)
-- VALUES
-- 	(5, 'Sara', 'Germany', NULL)

-- NOTE:
-- Text values use quotes.
-- Number values do not need quotes.
-- NULL does not use quotes.

	

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

-- NOTE:
-- INSERT INTO ... SELECT copies data from one table into another table.
-- The SELECT columns must match the INSERT columns by position.
-- If you run this more than once, it may fail because duplicate primary keys are not allowed.



/* ==============================================================================
   UPDATE PRACTICE
=============================================================================== */

-- 6. Update the score of the customer with id 1 to 600.

-- UPDATE practice_customers
-- SET score = 600
-- WHERE id = 1


-- 7. Update the country of the customer with id 4 to 'Canada'.

-- UPDATE practice_customers
-- SET country = 'Canada'
-- WHERE id = 4


-- 8. Update the customer with id 5.
-- Set score to 0.
-- Set country to 'France'.

-- UPDATE practice_customers
-- SET score = 0,
-- 	country = 'France'
-- WHERE id = 5

-- NOTE:
-- You can update multiple columns in one UPDATE statement.
-- Separate each column update with a comma.


-- 9. Update all customers where score IS NULL.
-- Set their score to 0.

-- UPDATE practice_customers
-- SET score = 0 
-- WHERE score IS NULL

-- NOTE:
-- Use IS NULL for missing values.
-- Do not use = NULL.
-- NULL is not a normal value, so SQL checks it using IS NULL.


-- 10. Update all customers from 'USA'.
-- Set their score to 350.

-- UPDATE practice_customers
-- SET score = 350
-- WHERE country = 'USA'

-- SELECT * FROM practice_customers
-- ORDER BY id ASC

-- NOTE:
-- SELECT after UPDATE is used to verify that the changes worked.
-- ORDER BY id ASC makes the output easier to read.

/* ==============================================================================
   DELETE PRACTICE
=============================================================================== */

-- 11. Delete the customer with id 3 from practice_customers.

-- DELETE FROM practice_customers
-- WHERE id = 3

-- NOTE:
-- DELETE removes the full row, not just one value from the row.


-- 12. Delete all customers where country is NULL.

-- DELETE FROM practice_customers
-- WHERE country IS NULL

-- NOTE:
-- IS NULL is also used with DELETE when removing rows with missing values.


-- 13. Delete all customers where score is less than 100.

-- DELETE FROM practice_customers
-- WHERE score < 100


-- 14. Delete all customers where id is greater than 5.

-- DELETE FROM practice_customers 
-- WHERE id > 5


-- 15. Delete all rows from practice_persons.
-- Do not drop the table.

-- TRUNCATE TABLE practice_persons

-- NOTE:
-- TRUNCATE removes all rows from the table quickly.
-- It keeps the table structure.
-- DROP TABLE removes the entire table structure.
-- DELETE can remove selected rows or all rows.