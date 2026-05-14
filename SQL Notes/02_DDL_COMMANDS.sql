-- HOW TO CREATE A TABLE

	-- Objective: Create a new table called persons with coloumns_id, person_name, birth_date and phone
	-- Objective 2: Add a new coloumn called email to the persons table
	-- OBJECTIVE 3: Delete the table persons from the database 


	CREATE TABLE persons (
		id INT NOT NULL,
		person_name VARCHAR(50) NOT NULL,
		birth_date DATE, 
		phone VARCHAR(15) NOT NULL, 
		CONSTRAINT pk_persons PRIMARY KEY (id) 
	)

	--ALTER TABLE persons
	--ADD email VARCHAR(50) NOT NULL

	
	--ALTER TABLE persons
	--DROP COLOUMN phone


	-- DROP TABLE persons


	-- Notes:
		   -- We start with CREATE TABLE and write the table name 
		   -- Then we add a name, type and constraint 
		   -- Each database table should have primary key and maybe connectable to other databases
		   -- ALTER can change or edit stuff in the table and we added a coloumn. This code should be exceuted in another query
		   -- ADD and DROP are one of the key commands of ALTER