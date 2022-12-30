


CREATE DATABASE wild_db_quest;
CREATE TABLE `wild_db_quest`.`wizard` (
`id` INT NOT NULL AUTO_INCREMENT,
`firstname` VARCHAR(100) NOT NULL,
`lastname` VARCHAR(100) NOT NULL,
`birthday` DATE NOT NULL,
`birth_place` VARCHAR(255) NULL,
`biography` TEXT NULL,
PRIMARY KEY (`id`));
  
ALTER TABLE wizard
ADD `is_muggle` BOOL NOT NULL;
  
CREATE TABLE `wild_db_quest`.`school` (
`id` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(100) NOT NULL,
`capacity` INT NOT NULL,
`country` VARCHAR(255) NULL,
PRIMARY KEY (`id`));
  
SHOW TABLES
DESCRIBE wizard;
DESCRIBE school;

ALTER TABLE wizard
DROP is_muggle;

ALTER TABLE wizard
ADD is_muggle BOOL NOT NULL;

INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('harry', 'potter', '1980-07-31', 'london', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('hermione', 'granger', '1979-09-19', '', 'Friend of Harry Potter', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('lily', 'potter', '1960-01-30', '', 'mother of Harry Potter', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('ron', 'weasley', '1980-03-01', '', 'Best friend of Harry', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('ginny', 'weasley', '1981-08-11', '', 'Sister of Ron and girlfriend of Harry', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('fred', 'weasley', '1978-04-01', '', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('george', 'weasley', '1978-04-01', '', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('arthur', 'weasley', '1950-02-06', '', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('molly', 'weasley', ' 1949-01-01', '', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('drago', 'malefoy', '1980-06-05', '', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('albus', 'dumbledore', '1881-07-01', '', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('severus', 'rogue', '1960-01-09', '', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('tom', 'jÃ©dusor', '1926-12-31', '', 'Celui-Dont-On-Ne-Doit-Pas-Prononcer-Le-Nom alias Voldermort', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('dudley', 'dursley', '1980-06-23', '', 'Cousin d\'Harry', '1');
  
SELECT * FROM wizard;
SELECT firstname, lastname FROM wizard;
SELECT lastname AS student_name FROM wizard;
SELECT firstname, birthday FROM wizard WHERE lastname='Weasley';

SELECT firstname, birthday 
FROM wizard 
WHERE 
lastname LIKE 'Weas%' AND
birthday BETWEEN '1970-01-01' AND '2000-01-01';

SELECT * FROM wizard LIMIT 5;

SELECT * FROM wizard LIMIT 5 OFFSET 20;

SELECT firstname, lastname FROM wizard ORDER BY lastname ASC, birthday DESC;

SELECT * FROM wizard WHERE lastname='Weasley' ORDER BY birthday DESC LIMIT 0,3;

INSERT INTO school (name, country, capacity) VALUES ('Hogwarts School of Witchcraft and Wizardry', 'United Kingdom', 400);

INSERT INTO school (name, country, capacity) 
VALUES ('Beauxbatons Academy of Magic', 'France', 550), 
('Castelobruxo', 'Brazil', 380), 
('Durmstrang Institute', 'Norway', 570);

SELECT * FROM school;
UPDATE school
SET capacity = 450
WHERE id = 1;
Select * from school;

DELETE FROM school
WHERE id = 3;

DELETE FROM school 
WHERE capacity > '500';

select * from school;

DELETE FROM school
WHERE id = 1 and 4;

select * from school;

DELETE FROM school
WHERE id = 2;

DELETE FROM school
WHERE id = 4;

select * from school;

INSERT INTO school (name, country, capacity) 
VALUES ('Beauxbatons Academy of Magic', 'France', 550), 
('Castelobruxo', 'Brazil', 380), 
('Durmstrang Institute', 'Norway', 570),
('Hogwarts School of Witchcraft and Wizardry', 'United Kingdom', 450),
('Ilvermorny School of Witchcraft and Wizardry', 'USA', 300),
('Koldovstoretz', 'Russia', 125),
('Mahoutokoro School of Magic', 'Japan', 800),
('Uagadou School of Magic', 'Uganda', 350);

UPDATE school
SET country = 'Sweden'
WHERE id = 7;

UPDATE school
SET capacity = 700
WHERE id = 11;

delete from `school` where `name` like '%Magic%'; 

select * from school;


