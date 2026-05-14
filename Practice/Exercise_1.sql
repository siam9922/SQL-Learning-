/* ==============================================================================
   DVDRENTAL SQL PRACTICE
-------------------------------------------------------------------------------
   Practice topics:
     1. SELECT ALL COLUMNS
     2. SELECT SPECIFIC COLUMNS
     3. WHERE CLAUSE
     4. ORDER BY
     5. GROUP BY
     6. HAVING
     7. DISTINCT
     8. LIMIT
     9. Combining Queries
     10. CREATE TABLE + CONSTRAINTS
=================================================================================
*/


/* ==============================================================================
   SELECT ALL COLUMNS
=============================================================================== */

-- 1. Retrieve all data from the customer table.

-- SELECT * FROM customer;


-- 2. Retrieve all data from the film table.

-- SELECT * FROM film;


-- 3. Retrieve all data from the payment table.

-- SELECT * FROM payment


-- 4. Retrieve all data from the rental table.

-- SELECT * FROM rental






/* ==============================================================================
   SELECT SPECIFIC COLUMNS
=============================================================================== */

-- 5. Retrieve each customer's first name, last name, and email.

-- SELECT first_name, last_name, email
-- FROM customer; 

-- 6. Retrieve each film's title, rating, and rental_rate.

-- SELECT title, rating, rental_rate
-- FROM film; 

-- 7. Retrieve each payment's customer_id, staff_id, and amount.

-- SELECT customer_id, staff_id, amount
-- FROM payment;

-- 8. Retrieve each rental's rental_id, rental_date, and customer_id.

-- SELECT rental_id, rental_date, customer_id
-- FROM rental; 




/* ==============================================================================
   WHERE CLAUSE
=============================================================================== */

-- 9. Retrieve all films with a rating of 'PG'.

-- SELECT * 
-- FROM film
-- WHERE rating = 'PG';

-- 10. Retrieve all films where the rental_rate is greater than 3.

-- SELECT * 
-- FROM film
-- WHERE rental_rate > 3

-- 11. Retrieve all payments where the amount is greater than 5.

-- SELECT * 
-- FROM payment
-- WHERE amount > 5

-- 12. Retrieve all customers where the store_id is equal to 1.

-- SELECT * 
-- FROM customer
-- WHERE store_id = 1

-- 13. Retrieve all films where the length is greater than 120.

-- SELECT * 
-- FROM film
-- WHERE length > 120;

-- 14. Retrieve all rentals made by customer_id 130.

-- SELECT * 
-- FROM rental
-- WHERE customer_id = 130 


/* ==============================================================================
   ORDER BY
=============================================================================== */

-- 15. Retrieve all films and sort them by title in ascending order.

-- SELECT * 
-- FROM film
-- ORDER BY title ASC

-- 16. Retrieve all films and sort them by rental_rate from highest to lowest.

-- SELECT * 
-- FROM film
-- ORDER BY rental_rate DESC

-- 17. Retrieve all payments and sort them by amount from highest to lowest.

-- SELECT * 
-- FROM payment
-- ORDER BY amount DESC

-- 18. Retrieve all customers and sort them by last_name in ascending order.

-- SELECT * 
-- FROM customer
-- ORDER BY last_name ASC

-- 19. Retrieve all films and sort them by rating first, then by length from longest to shortest.

-- SELECT * 
-- FROM film
-- ORDER BY rating ASC, length DESC


/* ==============================================================================
   GROUP BY
=============================================================================== */

-- 20. Find the total number of films for each rating.
-- Show rating and total_films.

-- SELECT rating, COUNT(*)
-- FROM film
-- GROUP BY rating 

-- 21. Find the average rental_rate for each rating.
-- Show rating and avg_rental_rate.

-- SELECT rating, ROUND(AVG(rental_rate), 2)
-- FROM film
-- GROUP BY rating


-- 22. Find the total amount paid by each customer.
-- Show customer_id and total_paid.

-- SELECT customer_id, SUM(amount) AS total_paid
-- FROM payment
-- GROUP BY customer_id

-- 23. Find the number of rentals made by each customer.
-- Show customer_id and total_rentals.

-- SELECT customer_id, COUNT(rental_id) AS total_rentals
-- FROM rental
-- GROUP BY customer_id
-- ORDER BY customer_id ASC

-- 24. Find the number of payments processed by each staff member.
-- Show staff_id and total_payments.

-- SELECT staff_id, ROUND(COUNT(amount), 2) AS total_payments
-- FROM payment
-- GROUP BY staff_id
-- ORDER BY staff_id ASC


-- 25. Find the average film length for each rating.
-- Show rating and avg_length.

-- SELECT rating, ROUND(AVG(length), 2)
-- FROM film
-- GROUP BY rating 


/* ==============================================================================
   HAVING
=============================================================================== */

-- 26. Find each customer's total number of rentals.
-- Show customer_id and total_rentals.
-- Only show customers who rented more than 30 times.

-- SELECT customer_id, COUNT(rental_id) AS total_rentals
-- FROM rental
-- GROUP BY customer_id
-- HAVING COUNT(rental_id) > 30
-- ORDER BY customer_id ASC


-- 27. Find the number of films in each rating category.
-- Show rating and total_films.
-- Only show ratings that have more than 200 films.

-- SELECT rating, COUNT(*)
-- FROM film
-- GROUP BY rating
-- HAVING COUNT(*) > 200


-- 28. Find the average rental_rate for each film rating.
-- Show rating and avg_rental_rate.
-- Only show ratings where the average rental_rate is greater than 3.

-- SELECT rating, ROUND(AVG(rental_rate), 2)
-- FROM film
-- GROUP BY rating
-- HAVING ROUND(AVG(rental_rate), 2) > 3


-- 29. Find the total amount paid by each customer.
-- Show customer_id and total_paid.
-- Only show customers who paid more than 150.

-- SELECT customer_id, SUM(amount)
-- FROM payment
-- GROUP BY customer_id
-- HAVING SUM(amount) > 150

-- 30. Find each staff member's total sales.
-- Show staff_id and total_sales.
-- Only show staff members who made more than 30000 in total sales.

-- SELECT staff_id, SUM(amount) 
-- FROM payment
-- GROUP BY staff_id
-- HAVING  SUM(amount) > 30000

-- 31. Find the number of rentals per inventory item.
-- Show inventory_id and total_rentals.
-- Only show inventory items rented more than 5 times.

-- SELECT inventory_id, COUNT(rental_id) 
-- FROM rental
-- GROUP BY inventory_id
-- HAVING  COUNT(rental_id) > 5

-- 32. Find customers who made more than 35 payments.
-- Show customer_id and total_payments.

-- SELECT customer_id, ROUND(COUNT(payment_id), 2) AS total_payments
-- FROM payment
-- GROUP BY customer_id
-- HAVING ROUND(COUNT(payment_id), 2) > 35
-- ORDER BY customer_id ASC



/* ==============================================================================
   DISTINCT
=============================================================================== */

-- 33. Return a unique list of all film ratings.

-- SELECT DISTINCT rating 
-- FROM film;

-- 34. Return a unique list of all customer store IDs.

-- SELECT DISTINCT store_id 
-- FROM customer;

-- 35. Return a unique list of all staff IDs from the payment table.

-- SELECT DISTINCT staff_id
-- FROM payment;

-- 36. Return a unique list of all rental rates from the film table.

-- SELECT DISTINCT rental_rate
-- FROM film; 


/* ==============================================================================
   LIMIT
=============================================================================== */

-- 37. Retrieve only 5 films.

-- SELECT * 
-- FROM film
-- LIMIT 5 

-- 38. Retrieve the 10 most expensive films based on rental_rate.

-- SELECT title, rental_rate
-- FROM film
-- ORDER BY rental_rate DESC
-- LIMIT 10

-- 39. Retrieve the 5 longest films.

-- SELECT title, length
-- FROM film
-- ORDER BY length DESC
-- LIMIT 5

-- 40. Retrieve the 10 highest payments.

-- SELECT * 
-- FROM payment
-- ORDER BY amount DESC
-- LIMIT 10

-- 41. Retrieve the 5 most recent rentals.

-- SELECT rental_date 
-- FROM rental
-- ORDER BY rental_date DESC
-- LIMIT 5


/* ==============================================================================
   COMBINING QUERIES
=============================================================================== */

-- 42. Retrieve the title, rating, and rental_rate of films
-- where the rental_rate is greater than 3
-- and sort the results by rental_rate from highest to lowest.

-- 43. Retrieve customer_id and total_paid for each customer
-- where the total_paid is greater than 150
-- and sort the results by total_paid from highest to lowest.

-- 44. Retrieve rating and avg_length for each film rating
-- where the average length is greater than 115
-- and sort the results by avg_length from highest to lowest.

-- 45. Retrieve inventory_id and total_rentals
-- for inventory items rented more than 5 times
-- and sort the results by total_rentals from highest to lowest.

-- 46. Retrieve staff_id and total_sales
-- for staff members who made more than 30000 in total sales
-- and sort the results by total_sales from highest to lowest.



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

-- 48. Create a table called practice_films.
-- Columns:
-- film_id should be an INT and the primary key.
-- title should be VARCHAR(100) and cannot be NULL.
-- rating should be VARCHAR(10).
-- rental_rate should be DECIMAL(4,2) and must be greater than 0.
-- length should be INT.

-- 49. Create a table called practice_payments.
-- Columns:
-- payment_id should be an INT and the primary key.
-- customer_id should be INT and cannot be NULL.
-- staff_id should be INT and cannot be NULL.
-- amount should be DECIMAL(5,2) and must be greater than 0.
-- payment_date should be DATE.

-- 50. Create a table called practice_rentals.
-- Columns:
-- rental_id should be an INT and the primary key.
-- rental_date should be DATE and cannot be NULL.
-- inventory_id should be INT and cannot be NULL.
-- customer_id should be INT and cannot be NULL.
-- return_date should be DATE.

-- 51. Create a table called practice_staff.
-- Columns:
-- staff_id should be an INT and the primary key.
-- first_name should be VARCHAR(50) and cannot be NULL.
-- last_name should be VARCHAR(50) and cannot be NULL.
-- email should be VARCHAR(100) and must be unique.
-- active should have a default value of TRUE.



/* ==============================================================================
   CREATE TABLE USING NAMED CONSTRAINTS
=============================================================================== */

-- 52. Create a table called practice_persons.
-- Columns:
-- id should be INT and cannot be NULL.
-- person_name should be VARCHAR(50) and cannot be NULL.
-- birth_date should be DATE.
-- phone should be VARCHAR(15) and cannot be NULL.
-- Add a named primary key constraint called pk_practice_persons on id.

-- 53. Create a table called practice_products.
-- Columns:
-- product_id should be INT and cannot be NULL.
-- product_name should be VARCHAR(100) and cannot be NULL.
-- price should be DECIMAL(6,2).
-- Add a named primary key constraint called pk_practice_products on product_id.
-- Add a check constraint so price must be greater than 0.

-- 54. Create a table called practice_accounts.
-- Columns:
-- account_id should be INT and cannot be NULL.
-- username should be VARCHAR(50) and cannot be NULL.
-- email should be VARCHAR(100) and cannot be NULL.
-- Add a named primary key constraint called pk_practice_accounts on account_id.
-- Add a named unique constraint called uq_practice_accounts_email on email.