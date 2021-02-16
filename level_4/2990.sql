/*
  Name: Problem 2990
	Copyright: 2021 Augusto Machado Ramos
	Author: Augusto Machado Ramos
	Date: 02/16/2020
	Comment language: en
	Description:
		Show the CPF, name of employees and the name of the department of employees who do not work on any project.
    The result must be ordered by cpf.
*/

CREATE TABLE empregados(
  cpf varchar(15) NOT NULL PRIMARY KEY,
  enome varchar(60) not NULL,
  salario float,
  cpf_supervisor varchar(15),
  dnumero INTEGER not NULL
);

create table departamentos (
  dnumero INTEGER primary key,
  dnome varchar(60) NOT NULL,
  cpf_gerente varchar(15),
  foreign key (cpf_gerente) references empregados(cpf_supervisor)
);

create table trabalha (
  cpf_emp varchar(15),
  pnumero INTEGER not NULL,
  foreign key (cpf_emp) references empregados(cpf)
);

create table projetos (
  pnumero INTEGER primary key not null,
  pnome varchar(45) not NULL,
  dnumero INTEGER,
  foreign key (dnumero) references departamentos(dnumero)
);
  
  
 INSERT INTO empregados(cpf, enome, salario, cpf_supervisor, dnumero)
 VALUES
  ('049382234322','João Silva', 2350, '2434332222', 1010),
  ('586733922290', 'Mario Silveira', 3500, '2434332222', 1010),
  ('2434332222', 'Aline Barros', 2350, null, 1010),
  ('1733332162', 'Tulio Vidal', 8350, null, 1020),
  ('4244435272', 'Juliana Rodrigues', 3310, null, 1020),
  ('1014332672', 'Natalia Marques', 2900, null, 1010);

INSERT into departamentos (dnumero, dnome, cpf_gerente)
values
  (1010, 'Pesquisa', '049382234322'),
  (1020, 'Ensino', '2434332222');

insert into trabalha (cpf_emp, pnumero)
values
  ('49382234322', 2010),
  ('586733922290', 2020),
  ('49382234322', 2020);

insert into projetos (pnumero, pnome, dnumero)
values
  (2010, 'Alpha', 1010),
  (2020, 'Beta', 1020);

SELECT e.cpf, e.enome, d.dnome
FROM departamentos d INNER JOIN empregados e ON d.dnumero = e.dnumero 
                     LEFT JOIN trabalha t ON t.cpf_emp = e.cpf
                     LEFT JOIN projetos p ON t.pnumero = p.pnumero
WHERE p.pnumero IS NULL
ORDER BY e.cpf
