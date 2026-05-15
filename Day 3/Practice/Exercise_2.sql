
/* ==============================================================================
   COMBINING QUERIES
=============================================================================== */

-- 42. Retrieve the title, rating, and rental_rate of films
-- where the rental_rate is greater than 3
-- and sort the results by rental_rate from highest to lowest.


-- SELECT title, rating, rental_rate
-- FROM film
-- WHERE rental_rate > 3
-- ORDER BY rental_rate DESC


-- 43. Retrieve customer_id and total_paid for each customer
-- where the total_paid is greater than 150
-- and sort the results by total_paid from highest to lowest.

-- SELECT customer_id, SUM(amount) AS total_paid
-- FROM payment
-- GROUP BY customer_id 
-- HAVING SUM(amount) > 150
-- ORDER BY total_paid DESC


-- 44. Retrieve rating and avg_length for each film rating
-- where the average length is greater than 115
-- and sort the results by avg_length from highest to lowest.

-- SELECT rating, AVG(length)
-- FROM film
-- GROUP BY rating
-- HAVING AVG(length) > 115
-- ORDER BY AVG(length) DESC


-- 45. Retrieve inventory_id and total_rentals
-- for inventory items rented more than 5 times
-- and sort the results by total_rentals from highest to lowest.

-- SELECT inventory_id, COUNT(rental_id) AS total_rentals
-- FROM rental
-- GROUP BY inventory_id
-- HAVING COUNT(rental_id) > 5
-- ORDER BY total_rentals DESC


-- 46. Retrieve staff_id and total_sales
-- for staff members who made more than 30000 in total sales
-- and sort the results by total_sales from highest to lowest.

-- SELECT staff_id, SUM(amount) AS total_sales
-- FROM payment
-- GROUP BY staff_id
-- HAVING SUM(amount) > 30000
-- ORDER BY total_sales DESC

/* ==============================================================================
   CREATE TABLE + CONSTRAINTS
=============================================================================== */

-- 47. Create a table called practice_customers.
-- Columns:
-- customer_id should be an INT and the primary key.
-- first_name should be VARCHAR(50) and cannot be NULL.
-- last_name should be VARCHAR(50) and cannot be NULL.
-- email should be VARCHAR(100) and must be unique.
-- store_id should be INT and cannot be NULL.

-- NOTE:
-- PRIMARY KEY means the column is the main ID.
-- It cannot be NULL and it cannot repeat.

-- NOTE:
-- NOT NULL means the value is required.
-- SQL will not allow the column to be empty.

-- NOTE:
-- UNIQUE means the value cannot repeat.
-- Example: two customers cannot have the same email.


-- CREATE TABLE practice_customers (
-- 	customer_id INT PRIMARY KEY,
-- 	first_name VARCHAR(50) NOT NULL,
-- 	last_name VARCHAR(50) NOT NULL,
-- 	email VARCHAR(100) UNIQUE,
-- 	store_id INT NOT NULL
	
-- );

-- SELECT * FROM practice_customers


-- 48. Create a table called practice_films.
-- Columns:
-- film_id should be an INT and the primary key.
-- title should be VARCHAR(100) and cannot be NULL.
-- rating should be VARCHAR(10).
-- rental_rate should be DECIMAL(4,2) and must be greater than 0.
-- length should be INT.

-- NOTE:
-- DECIMAL(4,2) means the number can have 4 total digits,
-- with 2 digits after the decimal.
-- Example: 9.99

-- NOTE:
-- CHECK is used when the column must follow a condition.
-- Example: CHECK (rental_rate > 0)
-- This prevents values like 0 or negative numbers.


-- CREATE TABLE practice_films (
-- 	film_id INT PRIMARY KEY,
-- 	title VARCHAR(100) NOT NULL,
-- 	rating VARCHAR(10),
-- 	rental_rate DECIMAL(4,2) CHECK (rental_rate > 0),
-- 	length INT
-- );

-- SELECT * FROM practice_films;


-- 49. Create a table called practice_payments.
-- Columns:
-- payment_id should be an INT and the primary key.
-- customer_id should be INT and cannot be NULL.
-- staff_id should be INT and cannot be NULL.
-- amount should be DECIMAL(5,2) and must be greater than 0.
-- payment_date should be DATE.

-- NOTE:
-- DECIMAL(5,2) means the number can have 5 total digits,
-- with 2 digits after the decimal.
-- Example: 999.99

-- NOTE:
-- CHECK (amount > 0) means the amount must be greater than 0.


-- CREATE TABLE practice_payments(
-- 	payment_id INT PRIMARY KEY, 
-- 	customer_id INT NOT NULL,
-- 	staff_id INT NOT NULL,
-- 	amount DECIMAL(5, 2) CHECK (amount > 0),
-- 	payment_date DATE
-- );

-- SELECT * FROM practice_payments


-- 50. Create a table called practice_rentals.
-- Columns:
-- rental_id should be an INT and the primary key.
-- rental_date should be DATE and cannot be NULL.
-- inventory_id should be INT and cannot be NULL.
-- customer_id should be INT and cannot be NULL.
-- return_date should be DATE.

-- NOTE:
-- DATE stores a date value.
-- Example: '2026-05-15'

-- NOTE:
-- return_date does not have NOT NULL,
-- so it can be unknown/missing.
-- In SQL, unknown or missing data is stored as NULL.


-- CREATE TABLE practice_rentals(
-- 	rental_id INT PRIMARY KEY,
-- 	rental_date DATE NOT NULL,
-- 	inventory_id INT NOT NULL,
-- 	customer_id INT NOT NULL,
-- 	return_date DATE
-- );

-- SELECT * FROM practice_rentals


-- 51. Create a table called practice_staff.
-- Columns:
-- staff_id should be an INT and the primary key.
-- first_name should be VARCHAR(50) and cannot be NULL.
-- last_name should be VARCHAR(50) and cannot be NULL.
-- email should be VARCHAR(100) and must be unique.
-- active should have a default value of TRUE.

-- NOTE:
-- BOOLEAN stores TRUE or FALSE.
-- TRUE means yes/active.
-- FALSE means no/inactive.

-- NOTE:
-- DEFAULT TRUE means if no value is given,
-- SQL will automatically use TRUE.

-- NOTE:
-- In PostgreSQL, use BOOLEAN DEFAULT TRUE.
-- In SQL Server, use BIT DEFAULT 1.


-- CREATE TABLE practice_staff(
-- 	staff_id INT PRIMARY KEY,
-- 	first_name VARCHAR(50) NOT NULL, 
-- 	last_name VARCHAR(50) NOT NULL,
-- 	email VARCHAR(100) UNIQUE,
-- 	active BOOLEAN DEFAULT TRUE
-- );

-- SELECT * FROM practice_staff



/* ==============================================================================
   ALTER TABLE PRACTICE
=============================================================================== */

-- NOTE:
-- ALTER TABLE is used to change an existing table.

-- NOTE:
-- ADD is used to add a new column.
-- DROP COLUMN is used to remove a column.
-- ALTER COLUMN is used to change an existing column.


-- 52. Add a new column called description to practice_films.
-- The column should be VARCHAR(255).

-- ALTER TABLE practice_films
-- ADD description VARCHAR(255)

-- NOTE:
-- ADD creates a new column inside an existing table.


-- 53. Add a new column called last_updated to practice_payments.
-- The column should be DATE.

-- ALTER TABLE practice_payments
-- ADD last_updated DATE

-- NOTE:
-- DATE is used when the column stores a date.


-- 54. Change the email column in practice_staff.
-- Make it VARCHAR(150).

-- ALTER TABLE practice_staff
-- ALTER COLUMN email TYPE VARCHAR(150)

-- NOTE:
-- In PostgreSQL / pgAdmin, changing a column type uses:
-- ALTER COLUMN column_name TYPE new_data_type

-- NOTE:
-- In SQL Server, the syntax is different:
-- ALTER COLUMN email VARCHAR(150)


-- 55. Add a new column called rental_status to practice_rentals.
-- The column should be VARCHAR(20).

-- ALTER TABLE practice_rentals
-- ADD rental_status VARCHAR(20)

-- NOTE:
-- VARCHAR(20) means text up to 20 characters.


-- 56. Drop the length column from practice_films.

-- ALTER TABLE practice_films
-- DROP COLUMN length

-- NOTE:
-- DROP COLUMN removes the column from the table.
-- This deletes that column structure and any data stored in it.


/* ==============================================================================
   DROP TABLE PRACTICE
=============================================================================== */

-- NOTE:
-- DROP TABLE deletes the whole table.
-- It removes the table structure and the data inside it.

-- NOTE:
-- DELETE removes rows from a table.
-- DROP TABLE removes the entire table.


-- 57. Drop the practice_films table.

-- DROP TABLE practice_films

-- 58. Drop the practice_payments table.

-- DROP TABLE practice_payments

-- 59. Drop the practice_rentals table.

-- DROP TABLE practice_rentals

-- 60. Drop the practice_staff table.

-- DROP TABLE practice_staff

-- 61. Drop the practice_customers table.

-- DROP TABLE practice_customers

-- NOTE:
-- Safer version:
-- DROP TABLE IF EXISTS practice_films;
-- This avoids an error if the table does not exist.