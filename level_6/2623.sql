/*
  Name: Problem 2623
	Copyright: 2019 Augusto Machado Ramos
	Author: Augusto Machado Ramos
	Date: 07/30/2019
	Comment language: en
	Description:
		The sales industry needs a report to know what products are left in stock.
		To help the sales industry, display the product name and category name for products whose
			amount is greater than 100 and the categorie ID is 1,2,3,6 or 9.
*/

CREATE TABLE categories (
  id numeric PRIMARY KEY,
  name varchar(255)
);

CREATE TABLE products (
  id numeric PRIMARY KEY,
  name varchar (255),
  amount numeric,
  price numeric,
  id_categories numeric REFERENCES categories (id)
);


INSERT INTO categories (id, name)
VALUES
  (1,	'Superior'),
  (2,	'Super Luxury'),
  (3,	'Modern'),
  (4,	'Nerd'),
  (5,	'Infantile'),
  (6,	'Robust'),
  (9,	'Wood');

INSERT INTO products (id, name, amount, price, id_categories)
VALUES
  (1,	'Blue Chair',	30, 300.00,	9),
  (2,	'Red Chair',	200,	2150.00, 2),
  (3,	'Disney Wardrobe',	400,	829.50,	4),
  (4,	'Blue Toaster',	20,	9.90,	3),
  (5,	'Solar Panel',	30,	3000.25,	4);

/* Solution */
SELECT products.name, categories.name
FROM products
    INNER JOIN categories
    ON products.id_categories = categories.id
WHERE products.amount > 100
    AND products.id_categories in (1, 2, 3, 6, 9);

/*  Execute this query to drop the tables */
-- DROP TABLE products, categories; --
