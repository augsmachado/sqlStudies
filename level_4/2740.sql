/*
  Name: Problem 2740
	Copyright: 2019 Augusto Machado Ramos
	Author: Augusto Machado Ramos
	Date: 07/30/2019
	Comment language: en
	Description:
		The International Underground Excavation League is a success between alternative sports,
			however the staff responsible for organizing the events doesn’t understand computers at all,
			they only know how to dig and the sport rule set. As such, you were hired to solve the League’s problem.
		Select the three first placed with the initial phrase "Podium: " and select the last two, which will be
			demoted to a lower league with the initial phrase “Demoted:".
*/

CREATE TABLE league(
  position INTEGER,
  team CHARACTER VARYING (255)
);


INSERT INTO league(position, team)
VALUES (1, 'The Quack Bats'),
       (2, 'The Responsible Hornets'),
       (3, 'The Bawdy Dolphins'),
       (4, 'The Abstracted Sharks'),
       (5, 'The Nervous Zebras'),
       (6, 'The Oafish Owls'),
       (7, 'The Unequaled Bison'),
       (8, 'The Keen Kangaroos'),
       (9, 'The Left Nightingales'),
       (10, 'The Terrific Elks'),
       (11, 'The Lumpy Frogs'),
       (12, 'The Swift Buffalo'),
       (13, 'The Big Chargers'),
       (14, 'The Rough Robins'),
       (15, 'The Silver Crocs');

  /* Solution */
  (SELESCT 'Podium: ' || league.team AS name
   	FROM league
  	LIMIT 3)
  UNION ALL
  (SELECT * FROM (
	  SELECT 'Demoted: ' || team AS name
	  FROM league
	  ORDER BY position DESC
	  LIMIT 2)
   demoted ORDER BY 1);
  
  /*  Execute this query to drop the tables */
  -- DROP TABLE league; --
