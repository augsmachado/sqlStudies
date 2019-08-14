/*
  Name: Problem 2739
	Copyright: 2019 Augusto Machado Ramos
	Author: Augusto Machado Ramos
	Date: 07/30/2019
	Comment language: en
	Description:
		The Central Bank of Financing lost many registers after a server failure that happened last October.
			The collection dates for the parcels where lost.
		The bank requested your help to select the names and day of month in which each client must pay theirs parcel.
		OBS: The day of month must be an integer.
*/

CREATE TABLE loan(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  value NUMERIC,
  payday TIMESTAMP
 );

INSERT INTO loan(id, name, value, payday)
VALUES (1, 'Cristian Ghyprievy', 3000.50, '2017-10-19'),
       (2, 'John Serial', 10000, '2017-10-10'),
       (3, 'Michael Seven', 5000.40, '2017-10-17'),
       (4, 'Joana Cabel', 2000, '2017-10-05'),
       (5, 'Miguel Santos', 4050, '2017-10-20');

  
  /* Solution */
  SELECT name, CAST((EXTRACT(DAY FROM payday)) AS int) AS day
  FROM loan;
  
  /*  Execute this query to drop the tables */
  -- DROP TABLE loan; --
