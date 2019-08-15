/*
  Name: Problem 2625
	Copyright: 2019 Augusto Machado Ramos
	Author: Augusto Machado Ramos
	Date: 07/30/2019
	Comment language: en
	Description:
		Your company's communications managers want a report on the natural person customer data that is
			registered in the database. But the old report had a problem. customers CPF data came without validation.
		So your job now is to select all the CPFs of all the customers, and apply a mask on the return of the data.
		The CPF mask looks like: '000.000.000-00'.
*/

CREATE TABLE customers (
  id numeric PRIMARY KEY,
  name varchar(255),
  street varchar(255),
  city varchar(255),
  state char(2),
  credit_limit numeric
);

CREATE TABLE natural_person (
  id_customers numeric REFERENCES customers (id),
  cpf char (14)
);


INSERT INTO customers (id, name, street, city, state, credit_limit)
VALUES
  (1,	'Nicolas Diogo Cardoso',	'Acesso Um',	'Porto Alegre',	'RS',	475),
  (2,	'Cecília Olivia Rodrigues',	'Rua Sizuka Usuy',	'Cianorte',	'PR',	3170),
  (3,	'Augusto Fernando Carlos Eduardo Cardoso',	'Rua Baldomiro Koerich',	'Palhoça',	'SC',	1067),
  (4,	'Nicolas Diogo Cardoso',	'Acesso Um',	'Porto Alegre',	'RS',	475),
  (5,	'Sabrina Heloisa Gabriela Barros',	'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre',	'RS',	4312),
  (6,	'Joaquim Diego Lorenzo Araújo',	'Rua Vitorino',	'Novo Hamburgo',	'RS',	2314);
  
INSERT INTO natural_person (id_customers, cpf)
VALUES
  (1,	'26774287840'),
  (2,	'97918477200');
  
  /* Solution */
  SELECT REGEX_REPLACE(cpf, '(\d{3})(\d{3})(\d{3})(\d{2})','\1.\2.\3-\4')
  FROM natural_person;
  
  /*  Execute this query to drop the tables */
  -- DROP TABLE natural_person, customers; -- 
