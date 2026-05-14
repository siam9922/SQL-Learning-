-- Learning INSERT, UPDATE, DELETE 


/* ==============================================================================
   HOW WE DO IT?
=============================================================================== */


-- Manual Method 

-- INSERT INTO [dbo].[customers] (id, first_name, country, score)
-- VALUES 
--     (6, 'Anna', 'USA', NULL), 
--     (7, 'Sam', NULL, 100)

-- NOTE: Start with columns and then add the data


/* ==============================================================================
   COPY DATA FROM 'customers' TABLE INTO 'persons'
=============================================================================== */

-- INSERT INTO persons (id, person_name, birthdate, phone)
-- SELECT 
--     id,
--     first_name, 
--     NULL, 
--     'Unknown'
-- FROM customers

-- SELECT * 
-- FROM persons 

/* 
   NOTE: Write a query from the source table and then 
   insert it into the target table 
*/


/* ==============================================================================
   UPDATE
=============================================================================== */

-- UPDATE customers
-- SET score = 0
-- WHERE id = 6 

-- SELECT * 
-- FROM customers


-- Change the score of customer with 
-- ID 10, to 0 and update the country to 'UK'

-- UPDATE customers
-- SET 
--     score = 0,
--     country = 'UK'
-- WHERE id = 10 

-- SELECT * 
-- FROM customers


/* 
   Update all customers with a NULL score
   by setting their score to 0
*/

-- UPDATE customers
-- SET score = 0
-- WHERE score IS NULL

-- SELECT * 
-- FROM customers
-- WHERE score IS NULL


/* ==============================================================================
   DELETE
=============================================================================== */

-- DELETE all customers with an ID greater than 5 

-- DELETE FROM customers
-- WHERE id > 5 

-- SELECT * 
-- FROM customers


-- DELETE all data from table persons

-- Note: TRUNCATE clears the whole table at once without checking or logging

-- TRUNCATE TABLE persons













