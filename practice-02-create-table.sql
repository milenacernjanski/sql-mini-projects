CREATE DATABASE msu_athletics;   

USE msu_athletics;

CREATE TABLE Player
	(playerID INT, 
    athlete_name VARCHAR(50) NOT NULL,
    jersey_number VARCHAR(50) NOT NULL,
    player_position VARCHAR(50) NOT NULL,  
    age VARCHAR(2) NOT NULL);
    
CREATE TABLE Sport  
	(sportID INT NOT NULL,
    sport_name VARCHAR(20) NOT NULL,
    location VARCHAR(20) NOT NULL);
    
CREATE TABLE Coach
	(coachID INT NOT NULL,
    coach_name VARCHAR(50) NOT NULL, 
    age VARCHAR(2),
    prior_degrees VARCHAR(3) NOT NULL);
        
    
    -- Table Player:

INSERT INTO Player
	VALUES (57, 'Lacie White', 1, 'Forward', 18);
    
INSERT INTO Player
	VALUES (99, 'Taylor Wise', 2, 'Center', 20);
    
INSERT INTO Player
	VALUES (108, 'Emma Bright', 3, 'Guard', 19);

INSERT INTO Player
	VALUES (35, 'Nancy Schooley', 4,  'Point guard', 19);
    
INSERT INTO Player
	VALUES (13, 'Kylie Watson', 5, 'Swingman', 21);

INSERT INTO Player
	VALUES (12, 'Jeremiah Black', 2, 'Swingman', 20);
    
INSERT INTO Player
	VALUES (101,  'Michael Trust', 4, 'Guard', 19);
    
INSERT INTO Player
	VALUES (28, 'Kevin Johnes', 6, 'Forward', 18);
    
INSERT INTO Player
	VALUES (93, 'Stephen Cherry', 8, 'Center', 19);
    
INSERT INTO Player
	VALUES (45, 'Parker Griffin', 9, 'Point guard', 21);
    
    
-- Table Sport:

 INSERT INTO Sport
	VALUES (344, 'Womens Basketball', 'Dome');
    
INSERT INTO Sport
	VALUES (532, 'Mens Basketball', 'Dome');
    
INSERT INTO Sport
	VALUES (307, 'Volleyball', 'Swain Hall');
    
INSERT INTO Sport
	VALUES (99, 'Baseball', 'Corbett Field');
    
INSERT INTO Sport
	VALUES (103, 'Football', 'Herb');
    

-- Table Coach:

INSERT INTO Coach
	VALUES (307, 'Kaden Mint', 35, 1);
    
INSERT INTO Coach
	VALUES (405, 'Macy Roberts', 47, 2);
    
INSERT INTO Coach
	VALUES (934, 'Onal Bowen', 23, 0 );
INSERT INTO Coach
	VALUES (873, 'Michael Lust', 39, 2);
    
INSERT INTO Coach
	VALUES (105, 'Holli Reyna', 50, 3);
    
SELECT *
FROM Player;

SELECT *
FROM Sport;

SELECT *
FROM Coach;
