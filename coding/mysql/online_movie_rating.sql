CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `release_year` year DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `collection_in_mil` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `movies` VALUES (1,'Forrest Gump',1994,'Drama',330);
INSERT INTO `movies` VALUES (2,'3 Idiots',2009,'Drama',2);
INSERT INTO `movies` VALUES (3,'Eternal Sunshine of the Spotless Mind',2004,'Drama',35);
INSERT INTO `movies` VALUES (4,'Good Will Hunting',1997,'Drama',138);
INSERT INTO `movies` VALUES (5,'Skyfall',2012,'Action',305);
INSERT INTO `movies` VALUES (6,'Gladiator',2000,'Action',189);
INSERT INTO `movies` VALUES (7,'Black',2005,'Drama',3);
INSERT INTO `movies` VALUES (8,'Titanic',1997,'Romance',659);
INSERT INTO `movies` VALUES (9,'The Shawshank Redemption',1994,'Drama',28);
INSERT INTO `movies` VALUES (10,'Udaan',2010,'Drama',2);
INSERT INTO `movies` VALUES (11,'Home Alone',1990,'Comedy',287);
INSERT INTO `movies` VALUES (12,'Casablanca',1942,'Romance',1);
INSERT INTO `movies` VALUES (13,'Avengers: Endgame',2019,'Action',859);
INSERT INTO `movies` VALUES (14,'Night of the Living Dead',1968,'Horror',3);
INSERT INTO `movies` VALUES (15,'The Godfather',1972,'Crime',136);
INSERT INTO `movies` VALUES (16,'Haider',2014,'Action',4);
INSERT INTO `movies` VALUES (17,'Inception',2010,'Adventure',294);
INSERT INTO `movies` VALUES (18,'Evil',2003,'Horror',1);
INSERT INTO `movies` VALUES (19,'Toy Story 4',2019,'Animation',435);
INSERT INTO `movies` VALUES (20,'Air Force One',1997,'Drama',138);
INSERT INTO `movies` VALUES (21,'The Dark Knight',2008,'Action',535);
INSERT INTO `movies` VALUES (22,'Bhaag Milkha Bhaag',2013,'Sport',4);
INSERT INTO `movies` VALUES (23,'The Lion King',1994,'Animation',424);
INSERT INTO `movies` VALUES (24,'Pulp Fiction',1994,'Crime',109);
INSERT INTO `movies` VALUES (25,'Kai Po Che',2013,'Sport',6);
INSERT INTO `movies` VALUES (26,'Beasts of No Nation',2015,'War',1);
INSERT INTO `movies` VALUES (27,'Andadhun',2018,'Thriller',3);
INSERT INTO `movies` VALUES (28,'The Silence of the Lambs',1991,'Crime',68);
INSERT INTO `movies` VALUES (29,'Deadpool',2016,'Action',364);
INSERT INTO `movies` VALUES (30,'Drishyam',2015,'Mystery',3);

CREATE TABLE `ratings` (
  `movie_id` int NOT NULL,
  `reviewer_id` int NOT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`movie_id`,`reviewer_id`),
  KEY `reviewer_id` (`reviewer_id`),
  CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`reviewer_id`) REFERENCES `reviewers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `ratings` VALUES (3,19,8.9);
INSERT INTO `ratings` VALUES (5,5,5.0);
INSERT INTO `ratings` VALUES (5,10,6.4);
INSERT INTO `ratings` VALUES (5,11,5.0);
INSERT INTO `ratings` VALUES (5,21,8.1);
INSERT INTO `ratings` VALUES (6,4,9.7);
INSERT INTO `ratings` VALUES (6,10,9.9);
INSERT INTO `ratings` VALUES (6,20,6.2);
INSERT INTO `ratings` VALUES (7,2,5.0);
INSERT INTO `ratings` VALUES (8,2,5.7);
INSERT INTO `ratings` VALUES (10,18,7.0);
INSERT INTO `ratings` VALUES (11,13,8.5);
INSERT INTO `ratings` VALUES (12,2,6.4);
INSERT INTO `ratings` VALUES (12,22,7.8);
INSERT INTO `ratings` VALUES (13,1,9.8);
INSERT INTO `ratings` VALUES (13,3,9.7);
INSERT INTO `ratings` VALUES (14,9,9.9);
INSERT INTO `ratings` VALUES (15,13,9.9);
INSERT INTO `ratings` VALUES (17,5,6.4);
INSERT INTO `ratings` VALUES (17,18,8.1);
INSERT INTO `ratings` VALUES (18,8,5.8);
INSERT INTO `ratings` VALUES (18,15,5.2);
INSERT INTO `ratings` VALUES (18,16,5.4);
INSERT INTO `ratings` VALUES (19,1,5.6);
INSERT INTO `ratings` VALUES (20,17,7.5);
INSERT INTO `ratings` VALUES (21,5,6.5);
INSERT INTO `ratings` VALUES (21,17,5.1);
INSERT INTO `ratings` VALUES (21,18,8.4);
INSERT INTO `ratings` VALUES (21,19,7.3);
INSERT INTO `ratings` VALUES (22,1,5.7);
INSERT INTO `ratings` VALUES (22,9,8.0);
INSERT INTO `ratings` VALUES (22,14,6.3);
INSERT INTO `ratings` VALUES (23,2,8.5);
INSERT INTO `ratings` VALUES (23,3,9.8);
INSERT INTO `ratings` VALUES (23,16,6.2);
INSERT INTO `ratings` VALUES (24,12,8.5);
INSERT INTO `ratings` VALUES (25,6,9.0);
INSERT INTO `ratings` VALUES (25,19,7.6);
INSERT INTO `ratings` VALUES (26,14,8.7);
INSERT INTO `ratings` VALUES (28,4,6.3);
INSERT INTO `ratings` VALUES (30,6,5.1);
INSERT INTO `ratings` VALUES (30,13,8.5);
INSERT INTO `ratings` VALUES (30,15,5.8);
INSERT INTO `ratings` VALUES (30,17,5.3);
INSERT INTO `ratings` VALUES (30,20,9.5);
CREATE TABLE `reviewers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `reviewers` VALUES (1,'Chaitanya','Baweja');
INSERT INTO `reviewers` VALUES (2,'Mary','Cooper');
INSERT INTO `reviewers` VALUES (3,'John','Wayne');
INSERT INTO `reviewers` VALUES (4,'Thomas','Stoneman');
INSERT INTO `reviewers` VALUES (5,'Penny','Hofstadter');
INSERT INTO `reviewers` VALUES (6,'Mitchell','Marsh');
INSERT INTO `reviewers` VALUES (7,'Wyatt','Skaggs');
INSERT INTO `reviewers` VALUES (8,'Andre','Veiga');
INSERT INTO `reviewers` VALUES (9,'Sheldon','Cooper');
INSERT INTO `reviewers` VALUES (10,'Kimbra','Masters');
INSERT INTO `reviewers` VALUES (11,'Kat','Dennings');
INSERT INTO `reviewers` VALUES (12,'Bruce','Wayne');
INSERT INTO `reviewers` VALUES (13,'Domingo','Cortes');
INSERT INTO `reviewers` VALUES (14,'Rajesh','Koothrappali');
INSERT INTO `reviewers` VALUES (15,'Ben','Glocker');
INSERT INTO `reviewers` VALUES (16,'Mahinder','Dhoni');
INSERT INTO `reviewers` VALUES (17,'Akbar','Khan');
INSERT INTO `reviewers` VALUES (18,'Howard','Wolowitz');
INSERT INTO `reviewers` VALUES (19,'Pinkie','Petit');
INSERT INTO `reviewers` VALUES (20,'Gurkaran','Singh');
INSERT INTO `reviewers` VALUES (21,'Amy','Farah Fowler');
INSERT INTO `reviewers` VALUES (22,'Marlon','Crafford');


