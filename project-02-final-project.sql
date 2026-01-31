CREATE DATABASE final_project;

USE final_project;

CREATE TABLE recepient
	(id INT, 
    r_id VARCHAR(50) NOT NULL,
    recepient_name VARCHAR(20) NOT NULL,
    PRIMARY KEY (id));

CREATE TABLE gifts_ideas
	(id INT, 
    gift  VARCHAR(50),
    idea VARCHAR(50),
    PRIMARY KEY (id));
    
CREATE TABLE family_friends
	(od INT,
    id INT,
    ff_id  VARCHAR(5) NOT NULL,
    friend_family VARCHAR(50) NOT NULL,
    PRIMARY KEY (od));

CREATE TABLE age_range
	(id INT, 
    ar_id  VARCHAR(5),
    age_range VARCHAR(20),
    PRIMARY KEY (id));

CREATE TABLE money
	(id INT, 
    b_id  VARCHAR(5) NOT NULL,
    budget VARCHAR(10) NOT NULL,
    actual VARCHAR(10),
    PRIMARY KEY (id));
    
-- Table recepient

INSERT INTO recepient
	VALUES (1, 2, 'Katrina');
    
INSERT INTO recepient
	VALUES (2, 4, 'Katrina from kids');
    
INSERT INTO recepient
	VALUES (3, 6, 'Perry');

INSERT INTO recepient
	VALUES (4, 8, 'Perry from kids');
    
INSERT INTO recepient
	VALUES (5, 10,'Thomas');

INSERT INTO recepient
	VALUES (6, 12,'Chloe');
    
INSERT INTO recepient
	VALUES (7, 14,'Janet');
    
INSERT INTO recepient
	VALUES (8, 16,'Alan');
    
INSERT INTO recepient
	VALUES (9, 18, 'Jim');
    
INSERT INTO recepient
	VALUES (10, 20,'Ros');
    
INSERT INTO recepient
	VALUES (11, 22, 'Angela');

INSERT INTO recepient
	VALUES (12, 24, 'Rob');
    
INSERT INTO recepient
	VALUES (13, 26, 'Annabel');
    
INSERT INTO recepient
	VALUES (14, 28, 'Fay');

INSERT INTO recepient
	VALUES (15, 30, 'Steve');
    
INSERT INTO recepient
	VALUES (16, 32,'Sasha');

INSERT INTO recepient
	VALUES (17, 34,'Philip');
    
INSERT INTO recepient
	VALUES (18, 36,'Mimi');
    
INSERT INTO recepient
	VALUES (19, 38,'Trixy');
    
INSERT INTO recepient
	VALUES (20, 40, 'Olivia');
    
INSERT INTO recepient
	VALUES (21, 42,'Sienna');
    
INSERT INTO recepient
	VALUES (22, 44, 'Kiera');

INSERT INTO recepient
	VALUES (23, 46,'Millie');
    
INSERT INTO recepient
	VALUES (24, 48, 'Megan');

-- Table gifts_ideas

INSERT INTO gifts_ideas
	VALUES (2, NULL, NULL);
    
INSERT INTO gifts_ideas
	VALUES (4, NULL, NULL);
    
INSERT INTO gifts_ideas
	VALUES (6, NULL, NULL);

INSERT INTO gifts_ideas
	VALUES (8, NULL, NULL);
    
INSERT INTO gifts_ideas
	VALUES (10, 'Billie Train', NULL);

INSERT INTO gifts_ideas
	VALUES (12,'Sunshine Chair', NULL);
    
INSERT INTO gifts_ideas
	VALUES (14,'Electronic Photo Frame', NULL);
    
INSERT INTO gifts_ideas
	VALUES (16,'Magazine Subscription', NULL);
    
INSERT INTO gifts_ideas
	VALUES (18, 'Backgammon', 'After Shaves');
    
INSERT INTO gifts_ideas
	VALUES (20,'Travel Hair Dryer(won in raffle $1 ticket)', NULL);
    
INSERT INTO gifts_ideas
	VALUES (22, NULL, NULL);

INSERT INTO gifts_ideas
	VALUES (24, 'Shirt', 'Gift vouchers?');
    
INSERT INTO gifts_ideas
	VALUES (26, 'Bouncing Tiger', NULL);
    
INSERT INTO gifts_ideas
	VALUES (28, 'Painting', NULL);

INSERT INTO gifts_ideas
	VALUES (30, NULL, 'Gadgets?');
    
INSERT INTO gifts_ideas
	VALUES (32,'DVD', 'Game');

INSERT INTO gifts_ideas
	VALUES (34, NULL, NULL);
    
INSERT INTO gifts_ideas
	VALUES (36, 'Make up', NULL);
    
INSERT INTO gifts_ideas
	VALUES (38,'Bouncing Tiger', NULL);
    
INSERT INTO gifts_ideas
	VALUES (40, 'Books', NULL);
    
INSERT INTO gifts_ideas
	VALUES (42, 'Books', NULL);
    
INSERT INTO gifts_ideas
	VALUES (44, 'Books', NULL);

INSERT INTO gifts_ideas
	VALUES (46,'DVD', NULL);
    
INSERT INTO gifts_ideas
	VALUES (48, 'Books', 'Tea set');
    
-- Table family_friends
    
INSERT INTO family_friends
	VALUES (10, 3, 1, 'our family');
    
INSERT INTO family_friends
	VALUES (20, 5, 2, 'our family');
    
INSERT INTO family_friends
	VALUES (30, 7, 3, 'our family');

INSERT INTO family_friends
	VALUES (40, 9, 4, 'our family');
    
INSERT INTO family_friends
	VALUES (50, 11, 5, 'our family');

INSERT INTO family_friends
	VALUES (60, 13, 6, 'our family');
    
INSERT INTO family_friends
	VALUES (70, 15, 7, 'Sara side');
    
INSERT INTO family_friends
	VALUES (80, 17, 8, 'Sara side');
    
INSERT INTO family_friends
	VALUES (90, 19, 9,  'my side');
    
INSERT INTO family_friends
	VALUES (100, 21, 10, 'my side');
    
INSERT INTO family_friends
	VALUES (110, 23, 11, 'my side');

INSERT INTO family_friends
	VALUES (120, 25, 12, 'my side');
    
INSERT INTO family_friends
	VALUES (130, 27, 13, 'my side');
    
INSERT INTO family_friends
	VALUES (140, 29, 14, 'my side');

INSERT INTO family_friends
	VALUES (150, 31, 15, 'my side');
    
INSERT INTO family_friends
	VALUES (160, 33, 16, 'my side');

INSERT INTO family_friends
	VALUES (170, 35, 17, 'Sara side');
    
INSERT INTO family_friends
	VALUES (180, 37, 18, 'Sara side');
    
INSERT INTO family_friends
	VALUES (190, 39, 19, 'Sara side');
    
INSERT INTO family_friends
	VALUES (200, 41, 20, 'Friends');
    
INSERT INTO family_friends
	VALUES (210, 43, 21, 'Friends');
    
INSERT INTO family_friends
	VALUES (220, 45, 22, 'Friends');

INSERT INTO family_friends
	VALUES (230, 47, 23, 'Friends');
    
INSERT INTO family_friends
	VALUES (240, 49, 24, 'Friends');
    
-- Table age_range

INSERT INTO age_range
	VALUES (1, 3, 'Adult');
    
INSERT INTO age_range
	VALUES (2, 5, 'Adult');
    
INSERT INTO age_range
	VALUES (3, 7, 'Adult');

INSERT INTO age_range
	VALUES (4, 9, 'Adult');
    
INSERT INTO age_range
	VALUES (5, 11,'Toddler');

INSERT INTO age_range
	VALUES (6, 13,'Toddler');
    
INSERT INTO age_range
	VALUES (7, 15,'Adult');
    
INSERT INTO age_range
	VALUES (8, 17,'Adult');
    
INSERT INTO age_range
	VALUES (9, 19, 'Adult');
    
INSERT INTO age_range
	VALUES (10, 21,'Adult');
    
INSERT INTO age_range
	VALUES (11, 23, 'Adult');

INSERT INTO age_range
	VALUES (12, 25, 'Adult');
    
INSERT INTO age_range
	VALUES (13, 27, 'Baby');
    
INSERT INTO age_range
	VALUES (14, 29, 'Adult');

INSERT INTO age_range
	VALUES (15, 31, 'Adult');
    
INSERT INTO age_range
	VALUES (16, 33,'Toddler');

INSERT INTO age_range
	VALUES (17, 35,'Adult');
    
INSERT INTO age_range
	VALUES (18, 37,'Adult');
    
INSERT INTO age_range
	VALUES (19, 39,'Baby');
    
INSERT INTO age_range
	VALUES (20, 41, 'Child');
    
INSERT INTO age_range
	VALUES (21, 43,'Toddler');
    
INSERT INTO age_range
	VALUES (22, 45, 'Toddler');

INSERT INTO age_range
	VALUES (23, 47,'Toddler');
    
INSERT INTO age_range
	VALUES (24, 49, 'Toddler');
    
-- Table money

INSERT INTO money
	VALUES (331, 1, '$30.00', NULL);
    
INSERT INTO money
	VALUES (558, 2, '$10.00', NULL);
    
INSERT INTO money
	VALUES (77, 3, '$30.00', NULL);

INSERT INTO money
	VALUES (99, 4, '$10.00', NULL);
    
INSERT INTO money
	VALUES (505, 11, '$40.00', '$10.00');

INSERT INTO money
	VALUES (131, 6, '$40.00', '$31.00');
    
INSERT INTO money
	VALUES (151, 7, '$20.00', '$28.00');
    
INSERT INTO money
	VALUES (171, 8, '$20.00', '$30.00');
    
INSERT INTO money
	VALUES (191, 9,  '$20.00', '$13.00');
    
INSERT INTO money
	VALUES (212, 10, '$20.00', '$1.00');
    
INSERT INTO money
	VALUES (232, 11, '$20.00', NULL);

INSERT INTO money
	VALUES (252, 12, '$20.00', NULL);
    
INSERT INTO money
	VALUES (272, 13, '$15.00', '$12.00');
    
INSERT INTO money
	VALUES (292, 14, '$20.00', '$25.00');

INSERT INTO money
	VALUES (313, 15, '$20.00', NULL);
    
INSERT INTO money
	VALUES (333, 16, '$15.00', '$13.75');

INSERT INTO money
	VALUES (353, 17, '$20.00', NULL);
    
INSERT INTO money
	VALUES (373, 18, '$15.00', '$10.00');
    
INSERT INTO money
	VALUES (393, 19, '$15.00', '$12.00');
    
INSERT INTO money
	VALUES (414, 20, '$10.00', '$6.50');
    
INSERT INTO money
	VALUES (434, 21, '$10.00', '$6.50');
    
INSERT INTO money
	VALUES (454, 22, '$10.00', '$6.50');

INSERT INTO money
	VALUES (474, 23, '$10.00', '$6.75');
    
INSERT INTO money
	VALUES (494, 24, '$10.00', '$8.00');
    
-- Creating a VIEW of this data
    
CREATE OR REPLACE VIEW final_view
AS 
SELECT 
	r.recepient_name AS 'Recepient',
    gi.gift AS 'Gift',
    gi.idea AS 'Idea',
    ff.friend_family AS 'Friends/Family',
    a.age_range AS 'Age Range',
    m.budget AS 'Budget',
    m.actual AS 'Actual'
FROM recepient r
	INNER JOIN gifts_ideas gi
		ON gi.id = r.r_id
	INNER JOIN family_friends ff
		ON r.id = ff.ff_id
	INNER JOIN age_range a
		 ON ff.id = a.ar_id
	INNER JOIN money m
		 ON a.id = m.b_id;

SELECT *
FROM final_view;

-- Three queries to show off the work

SELECT 
    r.recepient_name AS 'Recipient',
    ff.friend_family AS 'Family_or_Friend'
FROM 
    recepient r
JOIN 
    family_friends ff ON r.id = ff.ff_id;
    
SELECT 
    r.recepient_name AS 'Recipient',
    a.age_range AS 'Age_Range',
    gi.gift AS 'Gift_Idea',
    gi.idea AS 'Idea_Description'
FROM 
    recepient r
JOIN 
    family_friends ff ON r.id = ff.ff_id
JOIN 
    age_range a ON ff.id = a.ar_id
JOIN 
    gifts_ideas gi ON r.r_id = gi.id;

SELECT 
    r.recepient_name AS 'Recipient',
    ff.friend_family AS 'Family_or_Friend',
    m.budget AS 'Budget_Allocated',
    m.actual AS 'Actual_Spent'
FROM 
    recepient r
JOIN 
    family_friends ff ON r.id = ff.ff_id
JOIN 
    age_range a ON ff.id = a.ar_id
JOIN 
    money m ON a.id = m.b_id;

-- Extra credit

SELECT 
    a.age_range AS 'Age_Range',
    SUM(CAST(REPLACE(m.budget, '$', '') AS DECIMAL(10, 2))) AS 'Total_Allocated_Budget',
    SUM(CAST(REPLACE(m.actual, '$', '') AS DECIMAL(10, 2))) AS 'Total_Actual_Spent'
FROM 
    age_range a
JOIN 
    money m ON a.id = m.b_id
GROUP BY 
    a.age_range;
    
SELECT 
    recepient_name
FROM 
    recepient
WHERE 
    recepient_name REGEXP '^.[ae]';

CREATE OR REPLACE VIEW recipient_age_category AS
SELECT 
    r.recepient_name AS 'Recipient',
    a.age_range AS 'Age_Category'
FROM 
    recepient r
JOIN 
    family_friends ff ON r.id = ff.ff_id
JOIN 
    age_range a ON ff.id = a.ar_id;
    
SELECT *
FROM recipient_age_category;

CREATE OR REPLACE VIEW budget_utilization_status AS
SELECT 
    r.recepient_name AS 'Recipient',
    m.budget AS 'Budget_Allocated',
    m.actual AS 'Actual_Spent',
    CASE 
        WHEN m.actual IS NULL THEN 'Not Spent'
        WHEN CAST(REPLACE(m.budget, '$', '') AS DECIMAL(10, 2)) = CAST(REPLACE(m.actual, '$', '') AS DECIMAL(10, 2)) THEN 'Fully Utilized'
        ELSE 'Partially Utilized'
    END AS 'Budget_Status'
FROM 
    recepient r
JOIN 
    family_friends ff ON r.id = ff.ff_id
JOIN 
    age_range a ON ff.id = a.ar_id
JOIN 
    money m ON a.id = m.b_id;

SELECT *
FROM budget_utilization_status;

SELECT 
    r.recepient_name AS 'Recipient',
    gi.gift AS 'Gift',
    gi.idea AS 'Idea',
    ff.friend_family AS 'Friends/Family',
    a.age_range AS 'Age Range',
    m.budget AS 'Budget',
    m.actual AS 'Actual'
FROM 
    recepient r
INNER JOIN 
    gifts_ideas gi ON gi.id = r.r_id
INNER JOIN 
    family_friends ff ON r.id = ff.ff_id
INNER JOIN 
    age_range a ON ff.id = a.ar_id
INNER JOIN 
    money m ON a.id = m.b_id
LIMIT 10;
