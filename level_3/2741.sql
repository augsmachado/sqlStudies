/*
  Name: Problem 2741
	Copyright: 2019 Augusto Machado Ramos
	Author: Augusto Machado Ramos
	Date: 07/30/2019
	Comment language: en
	Description:
		The semester is over at South Transylvania University. Every grade was closed, and only Alchemy 104 haven’t
			published its list of approved students.
		Therefore, you should show the word 'Approved: ' alongisde the the name of a student and the grade,
			for those who have been approved (grade ≥7).
		Remember to sort the list by grade (higher grades first).
*/

CREATE TABLE students(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  grade NUMERIC
);


INSERT INTO students(id, name, grade)
VALUES (1, 'Terry B. Padilla',7.3),
       (2, 'William S. Ray',0.6),
       (3, 'Barbara A. Gongora',5.2),
       (4, 'Julie B. Manzer', 6.7),
       (5, 'Teresa J. Axtell', 4.6),
       (6, 'Ben M. Dantzler', 9.6);

  
  /* Solution */
  SELECT CONCAT('Approved: ', name) AS name, grade
  FROM students
  WHERE grade >= 7
  ORDER BY grade DESC;
  
  /*  Execute this query to drop the tables */
  -- DROP TABLE students; --
