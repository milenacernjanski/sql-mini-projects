-- Creating Database

CREATE DATABASE msu_athletics;   

USE msu_athletics;

CREATE TABLE players
	(id INT, 
    athelete_nameid  VARCHAR(10) NOT NULL,
    athlete_name VARCHAR(50) NOT NULL,
    athlete_sportid VARCHAR(50) NOT NULL,
    athlete_sport VARCHAR(50) NOT NULL,
    PRIMARY KEY (id));
    
CREATE TABLE wbasketball   -- women's basketball team
	(jid INT NOT NULL,
    wb_id VARCHAR(10),
    player_name VARCHAR(20) NOT NULL,
    player_positionid VARCHAR(20) NOT NULL,
    building VARCHAR(20) NOT NULL,
    PRIMARY KEY (jid));
    
CREATE TABLE mbasketball   -- men's basketball team
	(serialnum INT NOT NULL,
    mb_id VARCHAR(5) NOT NULL, 
    player_numid VARCHAR(3),
    p_name VARCHAR(20) NOT NULL,
    player_position VARCHAR(20) NOT NULL,
    mb_buildingid VARCHAR(20) NOT NULL,
    individual_coach VARCHAR(20),     
    PRIMARY KEY (mb_id));
    
CREATE TABLE bb_position
	(pid INT, 
    position_name VARCHAR(25) NOT NULL,     
    PRIMARY KEY (pid));
    
CREATE TABLE location  
	(sportid INT, 
    buildingid VARCHAR(25) NOT NULL,  
    building_name VARCHAR(25) NOT NULL,
    PRIMARY KEY (sportid));
    
CREATE TABLE bb_coaches 
	(cid INT, 
    coach_name VARCHAR(25) NOT NULL,     
    PRIMARY KEY (cid));

CREATE TABLE jnum_meaning -- as 'jersey number meaning' 
	(jnum_id INT, 
    meaning VARCHAR(25) NOT NULL,     
    PRIMARY KEY (jnum_id));
    
CREATE TABLE sports 
	(sid INT, 
    sport_name VARCHAR(25) NOT NULL,     
    PRIMARY KEY (sid));
    
CREATE TABLE name_table
	(nid INT, 
    name VARCHAR(25) NOT NULL,
    graduation_day DATE,
    PRIMARY KEY (nid));
    
    
    -- Table players:

INSERT INTO players
	VALUES (57, 1, 'Lacie White', 344, 'wbasketball');
    
INSERT INTO players
	VALUES (99, 2, 'Taylor Wise', 344, 'wbasketball');
    
INSERT INTO players
	VALUES (108, 3, 'Emma Bright', 344, 'wbasketball');

INSERT INTO players
	VALUES (35, 4, 'Nancy Schooley', 344,  'wbasketball');
    
INSERT INTO players
	VALUES (13, 5, 'Kylie Watson', 344, 'wbasketball');

INSERT INTO players
	VALUES (12, 6, 'Jeremiah Black', 532, 'mbasketball');
    
INSERT INTO players
	VALUES (101, 7,  'Michael Trust', 532, 'mbasketball');
    
INSERT INTO players
	VALUES (28, 8, 'Kevin Johnes', 532,  'mbasketball');
    
INSERT INTO players
	VALUES (93, 9, 'Stephen Cherry', 532, 'mbasketball');
    
INSERT INTO players
	VALUES (45, 10, 'Parker Griffin', 532, 'mbasketball');
    
-- Table wbasketball:

INSERT INTO wbasketball
	VALUES (1, 57, 'Lacie White', 1, 'Swain Hall');
    
INSERT INTO wbasketball
	VALUES (2, 99, 'Taylor Wise', 2, 'Swain Hall');
    
INSERT INTO wbasketball
	VALUES (3, 108, 'Emma Bright', 3, 'Swain Hall');

INSERT INTO wbasketball
	VALUES (4, 35, 'Nancy Schooley', 4, 'Swain Hall');
    
INSERT INTO wbasketball
	VALUES (5, 13, 'Kylie Watson', 5, 'Swain Hall');

-- Table mbasketball:

INSERT INTO mbasketball
	VALUES (1, 12, 2, 'Jeremiah Black', 'Swingman', 1, 105);
    
INSERT INTO mbasketball
	VALUES (2, 101, 4, 'Michael Trust', 'Guard', 1, NULL);
    
INSERT INTO mbasketball
	VALUES (3, 28, 6, 'Kevin Johnes', 'Forward', 1, 307);

INSERT INTO mbasketball
	VALUES (4, 93, 8, 'Stephen Cherry', 'Center', 1, NULL);
    
INSERT INTO mbasketball
	VALUES (5, 45, 9, 'Parker Griffin', 'Point guard', 1, 873);
    
-- Table position:

INSERT INTO bb_position
	VALUES (1, 'Forward');   -- fwd as 'forward'
    
INSERT INTO bb_position
	VALUES (2, 'Center');  -- cnt as 'center'
    
INSERT INTO bb_position
	VALUES (3, 'Guard');
    
INSERT INTO bb_position
	VALUES (4, 'Point guard');
    
INSERT INTO bb_position
	VALUES (5, 'Swingman');
    
-- Table location:

INSERT INTO location
	VALUES (344, 1, 'Dome');
    
INSERT INTO location
	VALUES (532, 2, 'Herb');
    
INSERT INTO location
	VALUES (307, 3, 'Soccer');
INSERT INTO location
	VALUES (99, 4, 'Hockey');
    
INSERT INTO location
	VALUES (103, 5, 'Swain Hall');
    
-- Table bb_coaches:

INSERT INTO bb_coaches
	VALUES (307, 'Kaden Mint');
    
INSERT INTO bb_coaches
	VALUES (405, 'Macy Roberts');
    
INSERT INTO bb_coaches
	VALUES (934, 'Onal Bowen');
INSERT INTO bb_coaches
	VALUES (873, 'Michael Lust');
    
INSERT INTO bb_coaches
	VALUES (105, 'Holli Reyna');
    
-- Table jnum_meaning:

INSERT INTO jnum_meaning
	VALUES (1, 'First Team');
    
INSERT INTO jnum_meaning
	VALUES (2, 'Second Team');
    
INSERT INTO jnum_meaning
	VALUES (3, 'Third Team');
INSERT INTO jnum_meaning
	VALUES (4, 'Fourth Team');
    
INSERT INTO jnum_meaning
	VALUES (5, 'Fifth Team');
    
-- Table sports

 INSERT INTO sports
	VALUES (344, 'Womens Basketball');
    
INSERT INTO sports
	VALUES (532, 'Mens Basketball');
    
INSERT INTO sports
	VALUES (307, 'Volleyball');
    
INSERT INTO sports
	VALUES (99, 'Baseball');
    
INSERT INTO sports
	VALUES (103, 'Football');
    
-- Table name

INSERT INTO name_table
	VALUES (1, 'Lacie White', '2025-05-17');
    
INSERT INTO name_table
	VALUES (2, 'Taylor Wise', '2024-05-17');
    
INSERT INTO name_table
	VALUES (3, 'Emma Bright', NULL);

INSERT INTO name_table
	VALUES (4, 'Nancy Schooley', '2027-05-29');
    
INSERT INTO name_table
	VALUES (5, 'Kylie Watson', NULL);

-- SQL queries we learned in class

SELECT *
FROM name_table
WHERE graduation_day < '2026-01-01';

SELECT *
FROM name_table
WHERE graduation_day BETWEEN '2026-08-31' AND '2028-01-01';

SELECT *
FROM wbasketball
WHERE player_name LIKE 'T%';  

SELECT *
FROM wbasketball
WHERE player_name REGEXP '^E|y$'; 

SELECT mb_id, p_name, player_position, mb_buildingid, wb_id, player_name, building
FROM mbasketball, wbasketball     
WHERE building IS NOT NULL;

SELECT mb_id, p_name, individual_coach, nid, graduation_day
FROM mbasketball, name_table  
WHERE individual_coach IS NULL AND graduation_day IS NULL;

SELECT COUNT(player_numid)  
FROM mbasketball
WHERE player_numid <= 5;

SELECT
	p.athlete_sport AS "Sport",
    bbp.position_name AS 'Position',
    COUNT(p.athelete_nameid) AS 'Number of Players',
    mb.p_name AS 'Player',
    wb.player_name AS 'Player'
FROM players p
	INNER JOIN name_table n
		ON p.athelete_nameid = n.nid
	INNER JOIN wbasketball wb
		ON p.id = wb.wb_id
	INNER JOIN bb_position bbp
		ON wb.player_positionid = bbp.pid
	INNER JOIN mbasketball mb
		ON wb.jid = mb.player_numid
	INNER JOIN bb_coaches bbc
		ON mb.individual_coach = bbc.cid
ORDER BY bbp.position_name  DESC;

SELECT
	n.nid AS "Name ID",
    mb.p_name AS 'Player Name',
    MAX(n.graduation_day) AS 'Last Graduation Day'
FROM name_table n
	INNER JOIN mbasketball mb
		ON mb.player_numid = n.nid;

SELECT *
FROM sports
WHERE sid NOT BETWEEN 330 AND 550;



-- Views
USE msu_athletics; 

CREATE OR REPLACE VIEW athletics_view -- Showing Men's and Women's Basketball Players with same Jersey Numbers
	AS
SELECT
    p.id AS id,
    mb.p_name AS 'Player',
    wb.player_name AS 'WB Player'
FROM players p
	INNER JOIN name_table n
		ON p.athelete_nameid = n.nid
	INNER JOIN wbasketball wb
		ON p.id = wb.wb_id
	INNER JOIN bb_position bbp
		ON wb.player_positionid = bbp.pid
	INNER JOIN mbasketball mb
		ON wb.jid = mb.player_numid
ORDER BY p.athlete_name DESC;

SELECT *
FROM athletics_view;

-- Create a view for players in the First Team for Men's Basketball by the Jersey Number 1-5 = First Team
USE msu_athletics;
CREATE VIEW mbfirst_team_players AS
SELECT 
	mb.*, 
    jnum.jnum_id 'ID'
FROM mbasketball mb
INNER JOIN jnum_meaning jnum ON jnum.jnum_id = mb.player_numid
ORDER BY jnum.meaning ASC;

SELECT *
FROM mbfirst_team_players;

-- Create a view for players on the Women's Basketball Team
USE msu_athletics;
CREATE VIEW womens_basketball_players AS
SELECT
    p.athlete_name AS player_name,
    wb.player_positionid AS player_position,
    wb.building AS team_building
FROM
    players p
INNER JOIN
    wbasketball wb ON p.id = wb.wb_id;
    
SELECT *
FROM womens_basketball_players;

-- Create a view for players in the First Team
USE msu_athletics;
CREATE VIEW first_team_players AS
SELECT
    p.athlete_name AS player_name,
    p.athlete_sport AS sport_name
FROM
    players p
INNER JOIN
    jnum_meaning j ON p.athelete_nameid = j.jnum_id
WHERE
    j.meaning = 'First Team';
    
SELECT *
FROM first_team_players;

-- Create View for MSU Men's Basketball coaches and their players
USE msu_athletics;
CREATE VIEW mb_basketball_coaches AS
SELECT
    bbc.*,
    mb.mb_id AS playerid,
    mb.p_name AS players_name,
    mb.player_position AS players_position,
    mb.individual_coach AS coach
FROM
    bb_coaches bbc
INNER JOIN
   mbasketball mb ON bbc.cid = mb.individual_coach;

SELECT * 
FROM mb_basketball_coaches;
