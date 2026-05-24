/* ==============================================================================
   SQL FILTERING DATA PRACTICE
-------------------------------------------------------------------------------
   Topics:
     1. Comparison Operators
     2. Logical Operators
     3. BETWEEN
     4. IN
     5. LIKE / ILIKE

   Database: dvdrental
=================================================================================
*/


/* ==============================================================================
   COMPARISON OPERATORS
   =, <>, >, >=, <, <=
=============================================================================== */

-- 1. Retrieve all films with a rating of 'PG'.

-- SELECT * 
-- FROM film
-- WHERE rating = 'PG'

-- 2. Retrieve all films that do not have a rating of 'R'.

-- SELECT * 
-- FROM film
-- WHERE rating != 'R'

-- 3. Retrieve all films with a rental_rate greater than 3.

-- SELECT * 
-- FROM film
-- WHERE rental_rate > 3

-- 4. Retrieve all films with a length of 120 minutes or more.

-- SELECT * 
-- FROM film
-- WHERE length >= 120

-- 5. Retrieve all payments with an amount less than 5.

-- SELECT * 
-- FROM payment
-- WHERE amount < 5


/* ==============================================================================
   LOGICAL OPERATORS
   AND, OR, NOT
=============================================================================== */

-- 6. Retrieve all films where the rating is 'PG'
-- and the rental_rate is greater than 3.

-- SELECT * 
-- FROM film
-- WHERE rating = 'PG' AND rental_rate > 3


-- 7. Retrieve all films where the rating is 'G'
-- or the rating is 'PG'.

-- SELECT * 
-- FROM film
-- WHERE rating = 'G' OR rating = 'PG'


-- 8. Retrieve all payments where the amount is greater than 5
-- and the staff_id is 1.

-- SELECT *
-- FROM payment 
-- WHERE amount > 5 AND staff_id = 1


-- 9. Retrieve all customers where the store_id is 1
-- or the active status is 1.

-- SELECT * 
-- FROM customer
-- WHERE store_id = 1 OR active = 1



-- 10. Retrieve all films where the rating is not 'NC-17'.

-- SELECT * FROM film
-- WHERE NOT rating = 'NC-17'



/* ==============================================================================
   RANGE FILTERING
   BETWEEN
=============================================================================== */

-- 11. Retrieve all films where the rental_rate is between 2 and 5.

-- SELECT * 
-- FROM film
-- WHERE rental_rate BETWEEN 2 and 5


-- 12. Retrieve all films where the length is between 90 and 120 minutes.

-- SELECT * 
-- FROM film 
-- Where length BETWEEN 90 and 120

-- 13. Retrieve all payments where the amount is between 3 and 8.

-- SELECT *
-- FROM payment
-- WHERE amount BETWEEN 3 and 8

-- 14. Retrieve all rentals where the rental_date is between
-- '2005-05-24' and '2005-05-31'.

-- SELECT * 
-- FROM rental
-- WHERE rental_date BETWEEN '2005-05-24' and '2005-05-31'


-- 15. Retrieve all films where the replacement_cost is between 10 and 20.


-- SELECT * FROM film 
-- WHERE replacement_cost BETWEEN 10 and 20


/* ==============================================================================
   SET FILTERING
   IN
=============================================================================== */

-- 16. Retrieve all films with a rating of 'G', 'PG', or 'PG-13'.

-- SELECT * FROM film
-- WHERE rating IN('G', 'PG', 'PG-13')

-- 17. Retrieve all customers who belong to store_id 1 or store_id 2.

-- SELECT * FROM customer
-- WHERE store_id IN(1, 2)

-- 18. Retrieve all payments made by customer_id 1, 2, or 3.

-- SELECT * FROM payment
-- WHERE customer_id IN(1, 2, 3)

-- 19. Retrieve all films with rental_rate values of 0.99, 2.99, or 4.99.

-- SELECT * FROM film
-- WHERE rental_rate IN(0.99, 2.99, 4.99)

-- 20. Retrieve all rentals made by staff_id 1 or staff_id 2.

-- SELECT * FROM rental
-- WHERE staff_id IN(1, 2)

/* ==============================================================================
   PATTERN MATCHING
   LIKE / ILIKE
=============================================================================== */

-- 21. Retrieve all customers whose first_name starts with 'A'.

-- SELECT *
-- FROM customer
-- WHERE first_name LIKE 'A%'

-- 22. Retrieve all customers whose last_name ends with 'son'.

-- SELECT *
-- FROM customer
-- WHERE last_name LIKE '%son'

-- 23. Retrieve all films whose title contains the word 'Love'.

-- SELECT * FROM film
-- WHERE title ILIKE '%Love%'

-- 24. Retrieve all customers whose email contains 'sakilacustomer.org'.

-- SELECT * FROM customer
-- WHERE email ILIKE '%sakilacustomer.org'

-- 25. Retrieve all films whose title has 'A' as the second character.

-- SELECT * FROM film
-- WHERE title ILIKE '_A%'