/*
  Name: Problem 2604
	Copyright: 2019 Augusto Machado Ramos
	Author: Augusto Machado Ramos
	Date: 07/25/2019  6:19 pm
	Comment language: en
	Description: 
    	The financial sector of the company needs a report that shows the ID and the name
			of the products whose price is less than 10 or greater than 100.
*/

CREATE TABLE products (
	id NUMERIC PRIMARY KEY,
  	name CHARACTER VARYING (255),
  	amount NUMERIC,
  	price NUMERIC
);

INSERT INTO products (id, name, amount, price)
VALUES 
  	(1,	'Two-door wardrobe',	100,	80),
  	(2,	'Dining table',	1000,	560),
  	(3,	'Towel holder',	10000,	5.50),
  	(4,	'Computer desk',	350,	100),
  	(5,	'Chair',	3000,	210.64),
  	(6,	'Single bed',	750,	99);

  /* Solution */
  SELECT id, name FROM products WHERE price > 100 OR price < 10;
  
  /*  Execute this query to drop the tables */
  -- DROP TABLE products; --
