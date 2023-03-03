

DELETE FROM wizard;

CREATE TABLE `player` (
`id` INT NOT NULL AUTO_INCREMENT,
`wirad_id` INT,
`team_id` INT,
`role` VARCHAR(50) NULL,
`enrollment_date` DATE,
PRIMARY KEY (`id`));

CREATE TABLE `team` (
`id` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR (80),
PRIMARY KEY (`id`));

-- Dumping data for table `player`

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,1,4,'beater','1995-10-09'),(2,2,1,'chaser','1995-08-17'),(3,3,1,'seeker','1994-12-03'),(4,4,3,'chaser','1995-03-24'),(5,5,3,'keeper','1997-07-16'),(6,6,1,'beater','1994-01-10'),(7,7,4,'chaser','1999-01-21'),(8,8,4,'keeper','1991-10-20'),(10,10,1,'beater','1991-08-03'),(11,11,3,'beater','1996-10-04'),(12,12,2,'chaser','1992-01-27'),(13,13,2,'beater','1991-01-11'),(14,14,2,'seeker','1995-08-17'),(16,16,3,'beater','1992-11-27'),(17,17,1,'seeker','1993-07-07'),(18,18,1,'keeper','1991-05-01'),(19,19,4,'keeper','1997-11-02'),(20,20,1,'keeper','1995-04-24'),(21,21,1,'chaser','1991-03-12'),(22,22,2,'chaser','1990-07-05'),(23,23,4,'beater','1995-01-06'),(24,24,1,'beater','1997-02-08'),(25,25,3,'beater','1996-12-16'),(26,26,2,'chaser','1997-02-07'),(27,27,2,'chaser','1999-07-31'),(28,28,3,'seeker','1994-05-13'),(29,29,1,'chaser','1997-08-14'),(30,30,1,'seeker','1993-08-30'),(31,31,1,'beater','1994-11-16'),(32,32,4,'seeker','1992-08-14'),(33,33,1,'keeper','1995-12-02'),(34,34,1,'chaser','1996-01-31'),(35,35,3,'chaser','1992-03-21'),(36,36,3,'seeker','1997-10-30'),(37,37,3,'chaser','1991-04-27'),(38,38,2,'chaser','1998-04-05'),(39,39,1,'beater','1992-02-17'),(40,40,1,'chaser','1995-10-15'),(41,41,1,'chaser','1999-10-25'),(42,42,1,'chaser','1998-05-06'),(43,43,2,'chaser','1998-03-01'),(44,44,2,'chaser','1991-03-11'),(46,46,3,'chaser','1993-11-02'),(47,47,3,'chaser','1992-03-12'),(48,48,3,'seeker','1993-03-17'),(49,49,1,'beater','1992-07-14'),(50,50,3,'chaser','1996-12-02'),(51,51,2,'chaser','1995-06-25'),(52,52,3,'beater','1991-12-14'),(55,55,1,'chaser','1991-05-14'),(56,56,1,'beater','1997-03-05'),(57,57,1,'beater','1996-12-07'),(58,58,1,'chaser','1999-02-23'),(59,59,2,'beater','1995-09-23'),(60,60,2,'beater','1992-04-12'),(61,61,2,'seeker','1992-10-09'),(62,62,3,'chaser','1990-02-27'),(64,64,4,'chaser','1999-01-12'),(66,66,3,'seeker','1991-02-23'),(67,67,4,'beater','1996-07-18'),(68,68,4,'keeper','1993-10-01'),(69,69,3,'beater','1997-03-06'),(70,70,1,'chaser','1995-11-08'),(71,71,4,'beater','1998-06-12'),(72,72,1,'beater','1997-11-23'),(73,73,3,'chaser','1994-01-28'),(74,74,4,'beater','1999-11-25'),(75,75,2,'seeker','1991-12-28'),(76,76,3,'seeker','1993-10-23'),(77,77,1,'seeker','1990-07-31'),(78,78,1,'beater','1992-01-01'),(79,79,1,'seeker','1991-04-27'),(81,81,1,'seeker','1998-03-29'),(82,82,1,'chaser','1991-08-26'),(83,83,1,'keeper','1992-04-17'),(85,85,1,'beater','1990-09-05'),(86,86,1,'seeker','1997-06-22'),(87,87,1,'chaser','1999-04-08'),(88,88,3,'beater','1991-07-08'),(89,89,3,'chaser','1996-09-25'),(90,90,1,'keeper','1993-01-04'),(91,91,4,'beater','1993-11-04'),(92,92,2,'beater','1997-12-14'),(93,93,1,'keeper','1992-05-27');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumping data for table `team`

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Gryffindor'),(2,'Ravenclaw'),(3,'Slytherin'),(4,'Hufflepuff');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumping data for table `wizard`




LOCK TABLES `wizard` WRITE;
/*!40000 ALTER TABLE `wizard` DISABLE KEYS */;
INSERT INTO `wizard` VALUES (1,'Hannah','Abbott'),(2,'Katie','Bell'),(3,'Cuthbert','Binns'),(4,'Phineas','Nigellus'),(5,'Regulus','Black'),(6,'Sirius','Black'),(7,'Amelia','Bones'),(8,'Susan','Bones'),(9,'Terry','Boot'),(10,'Lavender','Brown'),(11,'Millicent','Bulstrode'),(12,'Cho','Chang'),(13,'Penelope','Clearwater'),(14,'Michael','Corner'),(15,'Crabbe',''),(16,'Vincent','Crabbe'),(17,'Colin','Creevey'),(18,'Dennis','Creevey'),(19,'Cedric','Diggory'),(20,'Aberforth','Dumbledore'),(21,'Albus','Dumbledore'),(22,'Marietta','Edgecombe'),(23,'Justin','Finch-Fletchley'),(24,'Seamus','Finnigan'),(25,'Marcus','Flint'),(26,'Filius','Flitwick'),(27,'Anthony','Goldstein'),(28,'Gregory','Goyle'),(29,'Hermione','Granger'),(30,'Godric','Gryffindor'),(31,'Rubeus','Hagrid'),(32,'Helga','Hufflepuff'),(33,'Angelina','Johnson'),(34,'Lee','Jordan'),(35,'Bellatrix','Lestrange'),(36,'Rabastan','Lestrange'),(37,'Rodolphus','Lestrange'),(38,'Gilderoy','Lockhart'),(39,'Alice','Longbottom'),(40,'Frank','Longbottom'),(41,'Augusta','Longbottom'),(42,'Neville','Longbottom'),(43,'Luna','Lovegood'),(44,'Xenophilius','Lovegood'),(45,'Remus','Lupin'),(46,'Draco','Malfoy'),(47,'Lucius','Malfoy'),(48,'Narcissa','Malfoy'),(49,'Minerva','McGonagall'),(50,'Theodore','Nott'),(51,'Garrick','Ollivander'),(52,'Pansy','Parkinson'),(53,'Padma','Patil'),(54,'Parvati','Patil'),(55,'Peter','Pettigrew'),(56,'Harry','Potter'),(57,'James','Potter'),(58,'Lily','J.'),(59,'Quirinus','Quirrell'),(60,'Helena','Ravenclaw'),(61,'Rowena','Ravenclaw'),(62,'Tom','Riddle'),(63,'Demelza','Robins'),(64,'Newton','Scamander'),(65,'Horace','Slughorn'),(66,'Salazar','Slytherin'),(67,'Hepzibah','Smith'),(68,'Zacharias','Smith'),(69,'Severus','Snape'),(70,'Alicia','Spinnet'),(71,'Pomona','Sprout'),(72,'Dean','Thomas'),(73,'Andromeda','Tonks'),(74,'Nymphadora','Tonks'),(75,'Sybill','Trelawney'),(76,'Dolores','Umbridge'),(77,'Romilda','Vane'),(78,'Arthur','Weasley'),(79,'William','Weasley'),(80,'Charles','Weasley'),(81,'Fred','Weasley'),(82,'George','Weasley'),(83,'Ginevra','Weasley'),(84,'Molly','Weasley'),(85,'Percy','Weasley'),(86,'Ronald','Weasley'),(87,'Oliver','Wood'),(88,'Blaise','Zabini'),(89,'Bloody','Baron'),(90,'Cadogan',''),(91,'Fat','Friar'),(92,'Myrtle','Warren'),(93,'Nicholas','de');
/*!40000 ALTER TABLE `wizard` ENABLE KEYS */;
UNLOCK TABLES;

INSERT INTO `team` VALUES (1,'Gryffindor'),(2,'Ravenclaw'),(3,'Slytherin'),(4,'Hufflepuff');

INSERT INTO `player` VALUES (1,1,4,'beater','1995-10-09'),(2,2,1,'chaser','1995-08-17'),(3,3,1,'seeker','1994-12-03'),(4,4,3,'chaser','1995-03-24'),(5,5,3,'keeper','1997-07-16'),(6,6,1,'beater','1994-01-10'),(7,7,4,'chaser','1999-01-21'),(8,8,4,'keeper','1991-10-20'),(10,10,1,'beater','1991-08-03'),(11,11,3,'beater','1996-10-04'),(12,12,2,'chaser','1992-01-27'),(13,13,2,'beater','1991-01-11'),(14,14,2,'seeker','1995-08-17'),(16,16,3,'beater','1992-11-27'),(17,17,1,'seeker','1993-07-07'),(18,18,1,'keeper','1991-05-01'),(19,19,4,'keeper','1997-11-02'),(20,20,1,'keeper','1995-04-24'),(21,21,1,'chaser','1991-03-12'),(22,22,2,'chaser','1990-07-05'),(23,23,4,'beater','1995-01-06'),(24,24,1,'beater','1997-02-08'),(25,25,3,'beater','1996-12-16'),(26,26,2,'chaser','1997-02-07'),(27,27,2,'chaser','1999-07-31'),(28,28,3,'seeker','1994-05-13'),(29,29,1,'chaser','1997-08-14'),(30,30,1,'seeker','1993-08-30'),(31,31,1,'beater','1994-11-16'),(32,32,4,'seeker','1992-08-14'),(33,33,1,'keeper','1995-12-02'),(34,34,1,'chaser','1996-01-31'),(35,35,3,'chaser','1992-03-21'),(36,36,3,'seeker','1997-10-30'),(37,37,3,'chaser','1991-04-27'),(38,38,2,'chaser','1998-04-05'),(39,39,1,'beater','1992-02-17'),(40,40,1,'chaser','1995-10-15'),(41,41,1,'chaser','1999-10-25'),(42,42,1,'chaser','1998-05-06'),(43,43,2,'chaser','1998-03-01'),(44,44,2,'chaser','1991-03-11'),(46,46,3,'chaser','1993-11-02'),(47,47,3,'chaser','1992-03-12'),(48,48,3,'seeker','1993-03-17'),(49,49,1,'beater','1992-07-14'),(50,50,3,'chaser','1996-12-02'),(51,51,2,'chaser','1995-06-25'),(52,52,3,'beater','1991-12-14'),(55,55,1,'chaser','1991-05-14'),(56,56,1,'beater','1997-03-05'),(57,57,1,'beater','1996-12-07'),(58,58,1,'chaser','1999-02-23'),(59,59,2,'beater','1995-09-23'),(60,60,2,'beater','1992-04-12'),(61,61,2,'seeker','1992-10-09'),(62,62,3,'chaser','1990-02-27'),(64,64,4,'chaser','1999-01-12'),(66,66,3,'seeker','1991-02-23'),(67,67,4,'beater','1996-07-18'),(68,68,4,'keeper','1993-10-01'),(69,69,3,'beater','1997-03-06'),(70,70,1,'chaser','1995-11-08'),(71,71,4,'beater','1998-06-12'),(72,72,1,'beater','1997-11-23'),(73,73,3,'chaser','1994-01-28'),(74,74,4,'beater','1999-11-25'),(75,75,2,'seeker','1991-12-28'),(76,76,3,'seeker','1993-10-23'),(77,77,1,'seeker','1990-07-31'),(78,78,1,'beater','1992-01-01'),(79,79,1,'seeker','1991-04-27'),(81,81,1,'seeker','1998-03-29'),(82,82,1,'chaser','1991-08-26'),(83,83,1,'keeper','1992-04-17'),(85,85,1,'beater','1990-09-05'),(86,86,1,'seeker','1997-06-22'),(87,87,1,'chaser','1999-04-08'),(88,88,3,'beater','1991-07-08'),(89,89,3,'chaser','1996-09-25'),(90,90,1,'keeper','1993-01-04'),(91,91,4,'beater','1993-11-04'),(92,92,2,'beater','1997-12-14'),(93,93,1,'keeper','1992-05-27');

INSERT INTO `wizard` VALUES (1,'Hannah','Abbott'),(2,'Katie','Bell'),(3,'Cuthbert','Binns'),(4,'Phineas','Nigellus'),(5,'Regulus','Black'),(6,'Sirius','Black'),(7,'Amelia','Bones'),(8,'Susan','Bones'),(9,'Terry','Boot'),(10,'Lavender','Brown'),(11,'Millicent','Bulstrode'),(12,'Cho','Chang'),(13,'Penelope','Clearwater'),(14,'Michael','Corner'),(15,'Crabbe',''),(16,'Vincent','Crabbe'),(17,'Colin','Creevey'),(18,'Dennis','Creevey'),(19,'Cedric','Diggory'),(20,'Aberforth','Dumbledore'),(21,'Albus','Dumbledore'),(22,'Marietta','Edgecombe'),(23,'Justin','Finch-Fletchley'),(24,'Seamus','Finnigan'),(25,'Marcus','Flint'),(26,'Filius','Flitwick'),(27,'Anthony','Goldstein'),(28,'Gregory','Goyle'),(29,'Hermione','Granger'),(30,'Godric','Gryffindor'),(31,'Rubeus','Hagrid'),(32,'Helga','Hufflepuff'),(33,'Angelina','Johnson'),(34,'Lee','Jordan'),(35,'Bellatrix','Lestrange'),(36,'Rabastan','Lestrange'),(37,'Rodolphus','Lestrange'),(38,'Gilderoy','Lockhart'),(39,'Alice','Longbottom'),(40,'Frank','Longbottom'),(41,'Augusta','Longbottom'),(42,'Neville','Longbottom'),(43,'Luna','Lovegood'),(44,'Xenophilius','Lovegood'),(45,'Remus','Lupin'),(46,'Draco','Malfoy'),(47,'Lucius','Malfoy'),(48,'Narcissa','Malfoy'),(49,'Minerva','McGonagall'),(50,'Theodore','Nott'),(51,'Garrick','Ollivander'),(52,'Pansy','Parkinson'),(53,'Padma','Patil'),(54,'Parvati','Patil'),(55,'Peter','Pettigrew'),(56,'Harry','Potter'),(57,'James','Potter'),(58,'Lily','J.'),(59,'Quirinus','Quirrell'),(60,'Helena','Ravenclaw'),(61,'Rowena','Ravenclaw'),(62,'Tom','Riddle'),(63,'Demelza','Robins'),(64,'Newton','Scamander'),(65,'Horace','Slughorn'),(66,'Salazar','Slytherin'),(67,'Hepzibah','Smith'),(68,'Zacharias','Smith'),(69,'Severus','Snape'),(70,'Alicia','Spinnet'),(71,'Pomona','Sprout'),(72,'Dean','Thomas'),(73,'Andromeda','Tonks'),(74,'Nymphadora','Tonks'),(75,'Sybill','Trelawney'),(76,'Dolores','Umbridge'),(77,'Romilda','Vane'),(78,'Arthur','Weasley'),(79,'William','Weasley'),(80,'Charles','Weasley'),(81,'Fred','Weasley'),(82,'George','Weasley'),(83,'Ginevra','Weasley'),(84,'Molly','Weasley'),(85,'Percy','Weasley'),(86,'Ronald','Weasley'),(87,'Oliver','Wood'),(88,'Blaise','Zabini'),(89,'Bloody','Baron'),(90,'Cadogan',''),(91,'Fat','Friar'),(92,'Myrtle','Warren'),(93,'Nicholas','de');

#Return lastnames, firstnames, each player’s role and team, arranged in alphabetical order by team, then by role in the team, then by lastname, and finally by firstname.

SELECT w.firstname, w.lastname, p.`role`, t.`name`
FROM wizard w
INNER JOIN player p  ON wirad_id=w.id 
INNER JOIN team t ON team_id=t.id
ORDER BY t.`name` ASC;

SELECT w.firstname, w.lastname, p.`role`, t.`name`
FROM wizard w
INNER JOIN player p  ON wirad_id=w.id 
INNER JOIN team t ON team_id=t.id
ORDER BY P.`role` ASC;

SELECT w.firstname, w.lastname, p.`role`, t.`name`
FROM wizard w
INNER JOIN player p  ON wirad_id=w.id 
INNER JOIN team t ON team_id=t.id
ORDER BY w.`lastname` ASC;

SELECT w.firstname, w.lastname, p.`role`, t.`name`
FROM wizard w
INNER JOIN player p  ON wirad_id=w.id 
INNER JOIN team t ON team_id=t.id
ORDER BY w.`firstname` ASC;

#Return only the lastnames and firstnames of players who play the role of seeker, sorted by lastname and then firstname in alphabetical order.

SELECT lastname, firstname
FROM wizard
INNER JOIN player ON wirad_id=wizard.id
WHERE role='seeker'
ORDER BY lastname ASC;

SELECT lastname, firstname
FROM wizard
INNER JOIN player ON wirad_id=wizard.id
WHERE role='seeker'
ORDER BY firstname ASC;

#Return a list of all of the wizards who do not play quidditch.

ALTER TABLE player
ADD FOREIGN KEY (wirad_id) REFERENCES wizard(id);

ALTER TABLE player
ADD FOREIGN KEY (team_id) REFERENCES team(id);

SELECT w.firstname, w.lastname, role, w.id
FROM wizard w
LEFT JOIN player ON wirad_id=w.id
WHERE role IS NULL;



