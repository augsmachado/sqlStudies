/*
  Name: Problem 2620
	Copyright: 2019 Augusto Machado Ramos
	Author: Augusto Machado Ramos
	Date: 07/30/2019
	Comment language: en
	Description:
		The company's financial audit is asking us for a report for the first half of 2016.
			Then display the customers name and order number for customers who placed orders in the first half of 2016.
*/

CREATE TABLE customers (
  id numeric PRIMARY KEY,
  name varchar(255),
  street varchar(255),
  city varchar(255),
  state char(2),
  credit_limit numeric
);

CREATE TABLE orders (
  id numeric PRIMARY KEY,
  orders_date date,
  id_customers numeric REFERENCES customers (id)
);


INSERT INTO customers (id, name, street, city, state, credit_limit)
VALUES
  (1,	'Nicolas Diogo Cardoso',	'Acesso Um',	'Porto Alegre',	'RS',	475),
  (2,	'Cecília Olivia Rodrigues',	'Rua Sizuka Usuy',	'Cianorte',	'PR',	3170),
  (3,	'Augusto Fernando Carlos Eduardo Cardoso',	'Rua Baldomiro Koerich',	'Palhoça',	'SC',	1067),
  (4,	'Pedro Cardoso',	'Acesso Um',	'Porto Alegre',	'RS',	475),
  (5,	'Sabrina Heloisa Gabriela Barros',	'Rua Engenheiro Tito Marques Fernandes',	'Porto Alegre',	'RS',	4312),
  (6,	'Joaquim Diego Lorenzo Araújo',	'Rua Vitorino',	'Novo Hamburgo',	'RS',	2314);

INSERT INTO orders (id, orders_date, id_customers)
VALUES
  (1,	'13/05/2016',	3),
  (2,	'12/01/2016',	2),
  (3,	'18/04/2016',	5),
  (4,	'07/09/2016',	4),
  (5,	'13/02/2016',	6),
  (6,	'05/08/2016',	3);

  /* Solution */
  SELECT c.name, o.id AS id
  FROM customers c INNER JOIN orders o ON o.id_customers = c.id
  WHERE o.orders_date
  BETWEEN date('2016-01-01') and date('2016-06-30');
  
  /*  Execute this query to drop the tables */
  -- DROP TABLE orders, customers; --
