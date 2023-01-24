

## Use subqueries to answer questions 1 to 3
-- Q1
# Display the firstname and lastname of wizards who registered as players between the years 1995 and 1998.

SELECT firstname, lastname 
FROM wizard
WHERE id IN (SELECT wirad_id FROM player
WHERE `enrollment_date` between '1995-01-01' and '1998-01-01');

-- Q2
# Display the firstname and lastname of wizards who registered as players between the years 1995 and 1998 (enrollment_date) and whose role is 'keeper'

SELECT firstname, lastname 
FROM wizard
WHERE id IN (SELECT wirad_id FROM player
WHERE `enrollment_date` between '1995-01-01' and '1998-01-01'
and role ='keeper');

-- Q3
# Display the firstnames, lastnames and roles of wizards who registered as players between the years 1995 and 1998 and whose role is 'chaser'

SELECT firstname, lastname, `role`
FROM wizard
INNER JOIN player ON wirad_id=wizard.id
WHERE wizard.id IN (SELECT wirad_id FROM player
WHERE `enrollment_date` between '1995-01-01' and '1998-01-01'
and `role` = 'chaser');

## Use views to answer questions 4 and 5

-- Q4
# Display the number of players by role and by team


CREATE VIEW nb_player AS (
SELECT name, role, count(*) as count_role
FROM player
JOIN team ON team_id=team.id
GROUP BY role, name );

DROP VIEW nb_player;

SELECT * FROM nb_player;

-- Q5 
# Display, for the 'Gryffindor' team, the firstname, lastname and role of players whose role is 'chaser'

CREATE VIEW gryffindor_team AS (
SELECT t.name, firstname, lastname, p.role
FROM wizard
JOIN player p ON wirad_id=wizard.id
JOIN team t ON team_id=t.id 
WHERE t.id=p.team_id
GROUP BY wirad_id HAVING t.name = 'Gryffindor');

DROP VIEW gryffindor_team;

SELECT * FROM gryffindor_team;



















