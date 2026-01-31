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
    individual_coach VARCHAR(20) NOT NULL,     
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
	VALUES (2, 101, 4, 'Michael Trust', 'Guard', 1, 934);
    
INSERT INTO mbasketball
	VALUES (3, 28, 6, 'Kevin Johnes', 'Forward', 1, 307);

INSERT INTO mbasketball
	VALUES (4, 93, 8, 'Stephen Cherry', 'Center', 1, 405);
    
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
	VALUES (1, 'Lacie White');
    
INSERT INTO name_table
	VALUES (2, 'Taylor Wise');
    
INSERT INTO name_table
	VALUES (3, 'Emma Bright');

INSERT INTO name_table
	VALUES (4, 'Nancy Schooley');
    
INSERT INTO name_table
	VALUES (5, 'Kylie Watson');

-- ************************************

-- Second Script - Query Data:

USE msu_athletics;
SELECT
	p.athlete_name AS "Athlete Name",
    bbp.position_name AS 'Position',
    bbc.coach_name AS 'Coach',
    mb.p_name AS 'Player',
    wb.player_name AS 'Player',
    l.building_name AS 'Building Name',
    s.sport_name
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
	INNER JOIN location l
		ON mb.serialnum = l.buildingid
	INNER JOIN sports s
		ON l.sportid = s.sid
ORDER BY p.athlete_name DESC;


USE msu_athletics;
SELECT
	p.athlete_sport AS "Sport",
    p.athlete_name AS 'Name',
    bbp.position_name AS 'Position',
    bbc.coach_name AS 'Coach'
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
	INNER JOIN location l
		ON mb.serialnum = l.buildingid
ORDER BY p.athlete_name ASC;

USE msu_athletics;
SELECT
	p.athlete_sport AS "Sport",
    bbp.position_name AS 'Position',
    bbc.coach_name AS 'Coach',
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

USE msu_athletics;
SELECT
	p.athlete_sport AS "Sport",
    p.athlete_name AS 'Name',
    bbp.position_name AS 'Position',
    bbc.coach_name AS 'Coach'
FROM players p
	INNER JOIN name_table n
		ON p.athelete_nameid = n.nid
	INNER JOIN wbasketball wb
		ON p.id = wb.wb_id
	INNER JOIN bb_position bbp
		ON wb.player_positionid = bbp.pid
	INNER JOIN mbasketball mb
		ON wb.jid = mb.player_numid
	RIGHT OUTER JOIN bb_coaches bbc
		ON mb.individual_coach = bbc.cid
ORDER BY  bbc.coach_name ASC;

USE msu_athletics;
SELECT
	p.athlete_sport AS "Sport",
    p.athlete_name AS 'Name',
    bbp.position_name AS 'Position',
    bbc.coach_name AS 'Coach'
FROM players p
	INNER JOIN name_table n
		ON p.athelete_nameid = n.nid
	INNER JOIN wbasketball wb
		ON p.id = wb.wb_id
	INNER JOIN bb_position bbp
		ON wb.player_positionid = bbp.pid
	INNER JOIN mbasketball mb
		ON wb.jid = mb.player_numid
	LEFT OUTER JOIN bb_coaches bbc
		ON mb.individual_coach = bbc.cid
ORDER BY  bbp.position_name ASC;

USE msu_athletics;
SELECT
	p.athlete_name AS "Athlete Name",
    bbp.position_name AS 'Position',
    bbc.coach_name AS 'Coach',
    s.sport_name
FROM players p
	INNER JOIN wbasketball wb
		ON p.id = wb.wb_id
	INNER JOIN bb_position bbp
		ON wb.player_positionid = bbp.pid
	RIGHT OUTER JOIN mbasketball mb
		ON wb.jid = mb.player_numid
	INNER JOIN bb_coaches bbc
		ON mb.individual_coach = bbc.cid
	RIGHT OUTER JOIN location l
		ON mb.serialnum = l.buildingid
	INNER JOIN sports s
		ON l.sportid = s.sid
ORDER BY s.sport_name ASC;

USE msu_athletics;
SELECT
    bbc.coach_name AS 'Coach',
    wb.player_name AS 'Name',
    bbp.position_name AS 'Position',
    s.sport_name
FROM wbasketball wb
	INNER JOIN bb_position bbp
		ON wb.player_positionid = bbp.pid
	INNER JOIN mbasketball mb
		ON wb.jid = mb.player_numid
	INNER JOIN bb_coaches bbc
		ON mb.individual_coach = bbc.cid
	INNER JOIN location l
		ON mb.serialnum = l.buildingid
	INNER JOIN sports s
		ON l.sportid = s.sid
ORDER BY bbc.coach_name  ASC;

USE msu_athletics;
SELECT
    bbc.coach_name AS 'Coach',
    wb.player_name AS 'Name',
    bbp.position_name AS 'Position',
    s.sport_name
FROM wbasketball wb
	INNER JOIN bb_position bbp
		ON wb.player_positionid = bbp.pid
	INNER JOIN mbasketball mb
		ON wb.jid = mb.player_numid
	INNER JOIN bb_coaches bbc
		ON mb.individual_coach = bbc.cid
	INNER JOIN location l
		ON mb.serialnum = l.buildingid
	LEFT OUTER JOIN sports s
		ON l.sportid = s.sid
ORDER BY bbp.position_name DESC;

USE msu_athletics;
SELECT
	p.athlete_name AS "Athlete Name",
    bbp.position_name AS 'Position',
    bbc.coach_name AS 'Coach',
    mb.p_name AS 'Player',
    wb.player_name AS 'Player',
    l.building_name AS 'Building Name',
    s.sport_name
FROM players p
	INNER JOIN name_table n
		ON p.athelete_nameid = n.nid
	INNER JOIN wbasketball wb
		ON p.id = wb.wb_id
	INNER JOIN bb_position bbp
		ON wb.player_positionid = bbp.pid
	RIGHT OUTER JOIN mbasketball mb
		ON wb.jid = mb.player_numid
	INNER JOIN bb_coaches bbc
		ON mb.individual_coach = bbc.cid
	INNER JOIN location l
		ON mb.serialnum = l.buildingid
	LEFT OUTER JOIN sports s
		ON l.sportid = s.sid
ORDER BY p.athlete_name ASC;

USE msu_athletics;
SELECT
    wb.player_name AS 'Name',
    bbp.position_name AS 'Position',
    s.sport_name
FROM wbasketball wb
	INNER JOIN bb_position bbp
		ON wb.player_positionid = bbp.pid
	LEFT OUTER JOIN mbasketball mb
		ON wb.jid = mb.player_numid
	INNER JOIN bb_coaches bbc
		ON mb.individual_coach = bbc.cid
	RIGHT OUTER JOIN location l
		ON mb.serialnum = l.buildingid
	INNER JOIN sports s
		ON l.sportid = s.sid
ORDER BY  bbp.position_name ASC;