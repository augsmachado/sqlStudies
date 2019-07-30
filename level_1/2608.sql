/*
  Name: Problem 2608
	Copyright: 2019 Augusto Machado Ramos
	Author: Augusto Machado Ramos
	Date: 07/30/2019
	Comment language: en
	Description:
		The financial sector of our company, wants to know the smaller and higher values of the products, which we sell.
		For this you must display only the highest and lowest price of the products table.
*/

CREATE TABLE products (
  id numeric PRIMARY KEY,
  name varchar(50),
  amount numeric,
  price numeric(7,2)
);

INSERT INTO products (id, name, amount, price)
VALUES
  (1,	'Two-doors wardrobe',	100,	800),
  (2,	'Dining table',	1000,	560),
  (3,	'Towel holder',	10000,	25.50),
  (4,	'Computer desk',	350,	320.50),
  (5,	'Chair',	3000,	210.64),
  (6,	'Single bed',	750,	460);
  
  /* Solution */
  SELECT MAX(price) AS maxPrice, MIN(price) AS minPrice from products;
  
  /*  Execute this query to drop the tables */
  -- DROP TABLE products; --
