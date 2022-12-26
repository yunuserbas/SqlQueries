
# Aggretion Functions

SELECT count(*) as nb_school FROM school;

# Concatenaion Function

SELECT CONCAT (firstname, ' ', lastname) AS fullname FROM wizard;

# Group By

SELECT * FROM wizard w INNER JOIN school s ON s.id=w.id;

SELECT s.name, COUNT(*) as nb_student FROM wizard w INNER JOIN school s ON s.id=w.id GROUP BY s.id;

SELECT s.name, COUNT(*) as nb_student FROM wizard w INNER JOIN school s ON s.id=w.id GROUP BY s.id HAVING nb_student > -1;

-- QUESTION 1
# Return the team names and the number of players in each team, all sorted by the number of players in each team, from the highest to the lowest.

SELECT count(*) as nb_player FROM player;

SELECT t.name, COUNT(*) as nb_player FROM team t 
INNER JOIN player ON team_id=t.id 
GROUP BY team_id ORDER BY nb_player DESC;

-- QUESTION 2
# Return the names of complete teams only (14 players or more, that is to say a minimum of 7 players and 7 substitute players), sorted by alphabetical order.

SELECT t.name, COUNT(*) as nb_player 
FROM team t 
INNER JOIN player ON team_id=t.id 
GROUP BY team_id HAVING nb_player >= 14
ORDER BY t.name;



-- QUESTION 3
# Gryffondor’s trainer is superstitious, his favorite day is Monday. Return a list of players in his team who were enrolled on a Monday (they want them to play first) and sort the results by enrollment date.

SELECT firstname, lastname, `enrollment_date`
FROM wizard
INNER JOIN player ON wirad_id=wizard.id 
INNER JOIN team ON team_id=team.id
WHERE dayname (enrollment_date)='Monday' and team.`name`= 'Gryffindor'
ORDER BY `enrollment_date`;


