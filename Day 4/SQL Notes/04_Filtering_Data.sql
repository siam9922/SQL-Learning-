-- WHERE OPERATORS

-- 1. Comparison Operator: Compare two things

	-- Retrieve all customers from Germany (=)

	--SELECT * 
	--FROM customers
	--WHERE country = 'Germany' 

	-- Retrieve all customers who are not from Germany (!=)

	--SELECT *
	--FROM customers
	--WHERE country != 'Germany'

	-- Retrieve all customers with a score greater than 500 (>)

	--SELECT * 
	--FROM customers
	--WHERE score > 500

	-- Retrieve all customers with a score of 500 or more (>=) 

	--SELECT *
	--FROM customers
	--WHERE score >= 500

	-- Retrieve all customers with a score less than 500 (<)

	--SELECT * 
	--FROM customers
	--WHERE score < 500

	-- Retrieve all customers with a score of 500 or less (<=)

	--SELECT *
	--FROM customers
	--WHERE score <= 500


-- 2. Logical Operators (AND OR NOT)

	-- Retrieve all customers who are from USA and have a 
	-- score greater than 500 (AND)

	--SELECT * 
	--FROM customers
	--WHERE country = 'USA' AND score > 500


	-- Retrieve all customers who are either from the USA
	-- OR have a score greater than 500 (OR)

	--SELECT * 
	--FROM customers
	--WHERE country = 'USA' OR score > 500


	-- Retrieve all customers with a score not less than 500 (NOT)

	--SELECT * 
	--FROM customers
	--WHERE NOT score < 500


-- 3. Range Operator (Between)

	-- Retrieve all customers whose score falls in the 
	-- range between 100 and 500

-- WITHOUT BETWEEN

	--SELECT *
	--FROM customers
	--WHERE score >= 100 AND score <= 500

-- WITH BETWEEN 

	--SELECT *
	--FROM customers
	--WHERE score BETWEEN 100 AND 500


-- 4. Membership Operator (IN, NOT IN)

	-- Retrieve all customers from either Germany or USA

-- WITHOUT IN

	--SELECT * 
	--FROM customers
	--WHERE country = 'GERMANY' OR country = 'USA'


-- WITH IN

	--SELECT * 
	--FROM customers
	--WHERE country IN ('Germany', 'USA')


-- 5. Search Operator (LIKE)

	