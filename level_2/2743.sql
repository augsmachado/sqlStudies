/*
  Name: Problem 2743
	Copyright: 2019 Augusto Machado Ramos
	Author: Augusto Machado Ramos
	Date: 07/30/2019
	Comment language: en
	Description:
		The Global Organization of Characters at People’s Names (GOCPN) made a census to figure how many
			characters people have in theirs names.
		To help OMCNP, you must show the number of characters of each name sorted by decreasing number of characters.
*/

CREATE TABLE people(
	id INTEGER PRIMARY KEY,
	name varchar(255)
);


INSERT INTO people(id, name)
VALUES 
      (1, 'Karen'),
      (2, 'Manuel'),
      (3, 'Ygor'),
      (4, 'Valentine'),
      (5, 'Jo');
  
  /* Solution */
  SELECT name, LENGTH (name) AS length FROM people ORDER BY length DESC;
  
  /*  Execute this query to drop the tables */
  -- DROP TABLE people; --
