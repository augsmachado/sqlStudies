/*
  Name: Problem 2621
	Copyright: 2019 Augusto Machado Ramos
	Author: Augusto Machado Ramos
	Date: 07/30/2019
	Comment language: en
	Description:
		When it comes to delivering the report on how many products the company has in stock,
			a part of the report has become corrupted, so the stock keeper asked for help, he wants you to display the
			following data for him.
		Display the name of products whose amount are between 10 and 20 and whose name of the supplier starts with the
			letter 'P'.
*/

CREATE TABLE providers (
  id numeric PRIMARY KEY,
  name varchar(255),
  street varchar(255),
  city varchar(255),
  state char(2)
);

CREATE TABLE products (
  id numeric PRIMARY KEY,
  name varchar (255),
  amount numeric,
  price numeric,
  id_providers numeric REFERENCES providers (id)
);


INSERT INTO providers (id, name, street, city, state)
VALUES
  (1,	'Ajax SA',	'Rua Presidente Castelo Branco',	'Porto Alegre',	'RS'),
  (2,	'Sansul SA',	'Av Brasil',	'Rio de Janeiro',	'RJ'),
  (3,	'Pr Sheppard Chairs',	'Rua do Moinho',	'Santa Maria',	'RS'),
  (4,	'Elon Electro',	'Rua Apolo',	'São Paulo',	'SP'),
  (5,	'Mike Electro',	'Rua Pedro da Cunha',	'Curitiba',	'PR');
  
INSERT INTO products (id, name, amount, price, id_providers)
VALUES
  (1,	'Blue Chair',	30,	300.00,	5),
  (2,	'Red Chair',	50,	2150.00,	2),
  (3,	'Disney Wardrobe',	400,	829.50,	4),
  (4,	'Executive Chair',	17,	9.90,	3),
  (5,	'Solar Panel',	30,	3000.25,	4);
  
  /* Solution */
 SELECT products.name
 FROM products INNER JOIN providers ON products.id_providers = providers.id
 WHERE providers.name LIKE 'P%'
 AND products.amount BETWEEN 10 AND 20;
 
  /*  Execute this query to drop the tables */
  -- DROP TABLE products, providers; -- 
