/*
  Name: Problem 2737
	Copyright: 2019 Augusto Machado Ramos
	Author: Augusto Machado Ramos
	Date: 07/30/2019
	Comment language: en
	Description:
		The manager of Mangojata Lawyers requested a report on the current lawyers.
		The manager wants you to show him the name of the lawyer with the most clients, the one with the
			fewest and the client average considering all lawyers.
		OBS: Before presenting the average, show a field called Average to make the report more readable.
			The average must be presented as an integer.
*/

CREATE TABLE lawyers(
  register INTEGER PRIMARY KEY,
  name VARCHAR(255),
  customers_number INTEGER
 );
  
  
 INSERT INTO lawyers(register, name, customers_number)
 VALUES (1648, 'Marty M. Harrison', 5),
	(2427, 'Jonathan J. Blevins', 15),
	(3365, 'Chelsey D. Sanders', 20),
	(4153, 'Dorothy W. Ford', 16),
	(5525, 'Penny J. Cormier', 6);

  
  /* Solution */
  SELECT name, customers_number 
  FROM lawyers
  WHERE customers_number = (SELECT MAX(customers_number) FROM lawyers )
  UNION ALL
  SELECT name, customers_number
  FROM lawyers
  WHERE customers_number = (SELECT MIN(customers_number) FROM lawyers )
  UNION ALL
  SELECT 'Average', ROUND(AVG(customers_number),0) FROM lawyers;

  
  /*  Execute this query to drop the tables */
  -- DROP TABLE lawyers; --
