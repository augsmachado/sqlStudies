/*
  Name: Problem 2745
	Copyright: 2019 Augusto Machado Ramos
	Author: Augusto Machado Ramos
	Date: 07/30/2019
	Comment language: en
	Description:
		You are going to the International Personal Tax meeting and your proposal is:
			every individual with income higher than 3000 must pay a tax to the government,
			which is 10% of his/her income.
		Show the name and the tax value of each person who earns more than 3000, with two decimal places of precision.
*/

CREATE TABLE people (
  id INTEGER PRIMARY KEY,
  name CHARACTER VARYING (255),
  salary NUMERIC
);


INSERT INTO people(id, name, salary)
VALUES 
      (1, 'James M. Tabarez', 883),
      (2, 'Rafael T. Hendon', 4281),
      (3, 'Linda J. Gardner', 4437),
      (4, 'Nicholas J. Conn', 8011),
      (5, 'Karol A. Morales', 2508),
      (6, 'Lolita S. Graves', 8709);

  /* Solution */
  SELECT name, ROUND((salary*0.1), 2) AS tax FROM people
  WHERE salary > 3000;
  
  /*  Execute this query to drop the tables */
  -- DROP TABLE people; --
