CREATE DATABASE midterm_project;

USE midterm_project;

CREATE TABLE vendor
	(id INT, 
    vendor_id  VARCHAR(5) NOT NULL,
    vendor_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id));
	
CREATE TABLE invoice
	(in_id INT, 
    invoice_number  VARCHAR(15) NOT NULL,
    invoice_date  DATE,
    PRIMARY KEY (in_id));

CREATE TABLE line
	(id INT, 
    line_id  VARCHAR(5) NOT NULL,
    account_id VARCHAR(5) NOT NULL,
    line_item_amount VARCHAR(10) NOT NULL,
    PRIMARY KEY (id));

CREATE TABLE account_table
	(a_id INT, 
    account_description VARCHAR(50) NOT NULL,
    PRIMARY KEY (a_id));
    
    -- Table vendor 
    
INSERT INTO vendor
	VALUES ( 1, 1, 'Blue Cross');
    
INSERT INTO vendor
	VALUES (2, 2, 'Cardinal Business Media, Inc.');
    
INSERT INTO vendor
	VALUES (3, 3, 'Data Reproductions Corp');

INSERT INTO vendor
	VALUES (4, 4, 'Federal Express Corporation');
    
INSERT INTO vendor
	VALUES (5, 5,'Federal Express Corporation');

INSERT INTO vendor
	VALUES (6, 6,'Federal Express Corporation');
    
INSERT INTO vendor
	VALUES (7, 7,'Federal Express Corporation');
    
INSERT INTO vendor
	VALUES (8, 8,'Ford Motor Credit Company');
    
INSERT INTO vendor
	VALUES (9, 9, 'Ingram');
    
INSERT INTO vendor
	VALUES (10, 10,'Malloy Lithographing Inc');
    
INSERT INTO vendor
	VALUES (11, 11, 'Malloy Lithographing Inc');
    
    
-- Table invoice

INSERT INTO invoice
	VALUES ( 1, 547480102, '2018-08-01');
    
INSERT INTO invoice
	VALUES (2, 134116, '2018-07-28');
    
INSERT INTO invoice
	VALUES (3, 39104, '2018-07-10');

INSERT INTO invoice
	VALUES (4, 263253270, '2018-07-22');
    
INSERT INTO invoice
	VALUES (5, 263253268, '2018-07-21');

INSERT INTO invoice
	VALUES (6, 963253264,'2018-07-18');
    
INSERT INTO invoice
	VALUES (7, 263253273,'2018-07-22');
    
INSERT INTO invoice
	VALUES (8, 9982771,'2018-07-24');
    
INSERT INTO invoice
	VALUES (9, 31361833, '2018-07-21');
    
INSERT INTO invoice
	VALUES (10, 'P-0608', '2018-07-23');
    
INSERT INTO invoice
	VALUES (11, '0-2436', '2018-07-31');
 
 
-- Table line

INSERT INTO line
	VALUES ( 3, 1, 2, 224.00);
    
INSERT INTO line
	VALUES (5, 2, 4, 90.36 );
    
INSERT INTO line
	VALUES (7, 3, 6, 85.31);

INSERT INTO line
	VALUES (9, 4, 8,  67.92);
    
INSERT INTO line
	VALUES (11, 5, 10, 59.97);

INSERT INTO line
	VALUES (13, 6, 12, 52.25);
    
INSERT INTO line
	VALUES (15, 7, 14, 30.75);
    
INSERT INTO line
	VALUES (17, 8, 16, 503.20);
    
INSERT INTO line
	VALUES (19, 9, 18, 579.42);
    
INSERT INTO line  
	VALUES (21, 10, 20, 20551.18);

INSERT INTO line
	VALUES (23, 11, 22, 10976.06);

-- Table account_table

INSERT INTO account_table
	VALUES (2, 'Group Insurance');
    
INSERT INTO account_table
	VALUES (4, 'Direct Mail Advertising');
    
INSERT INTO account_table
	VALUES (6, 'Book Printing Costs');

INSERT INTO account_table
	VALUES (8, 'Freight');
    
INSERT INTO account_table
	VALUES (10,'Freight');

INSERT INTO account_table
	VALUES (12,'Freight');
    
INSERT INTO account_table
	VALUES (14,'Freight');
    
INSERT INTO account_table
	VALUES (16,'Travel and Accomodations');
    
INSERT INTO account_table
	VALUES (18, 'Books, Dues, and Subscriptions');
    
INSERT INTO account_table
	VALUES (20,'Book Printing Costs');
    
INSERT INTO account_table
	VALUES (22, 'Book Printing Costs');

-- A VIEW that replicates the view above  --> 'midterm_view'

CREATE OR REPLACE VIEW midterm_view
AS 
SELECT 
	v.vendor_name AS 'Vendor Name',
    i.invoice_number,
    i.invoice_date,
    l.line_item_amount,
    a.account_description AS 'Account Description'
FROM vendor v
	INNER JOIN invoice i
		ON i.in_id = v.vendor_id
	INNER JOIN line l
		ON v.id = l.line_id
	INNER JOIN account_table a
		 ON l.account_id = a.a_id
GROUP BY v.vendor_name, i.invoice_number, i.invoice_date;

SELECT *
FROM midterm_view;

-- A VIEW that shows which vendors are owed > $500  --> 'Vendors owed > 500' -->'midterm_view1'

CREATE OR REPLACE VIEW midterm_view1
AS 
SELECT 
	v.vendor_name AS 'Vendor Name',
    i.invoice_number,
    i.invoice_date,
    l.line_item_amount,
    a.account_description AS 'Account Description'
FROM vendor v
	INNER JOIN invoice i
		ON i.in_id = v.vendor_id
	INNER JOIN line l
		ON v.id = l.line_id
	INNER JOIN account_table a
		 ON l.account_id = a.a_id
WHERE l.line_item_amount > 500
GROUP BY v.vendor_name, l.line_item_amount
ORDER BY l.line_item_amount DESC;

SELECT *
FROM midterm_view1;

-- EXTRA CREDIT 

-- A VIEW that shows which vendors are owed < $500  --> 'Vendors owed < 500' -->'midterm_view2', there should be information on the ones that are owed less than 500


CREATE OR REPLACE VIEW midterm_view2
AS 
SELECT 
	v.vendor_name AS 'Vendor Name',
    i.invoice_number,
    i.invoice_date,
    l.line_item_amount,
    a.account_description AS 'Account Description'
FROM vendor v
	INNER JOIN invoice i
		ON i.in_id = v.vendor_id
	INNER JOIN line l
		ON v.id = l.line_id
	INNER JOIN account_table a
		 ON l.account_id = a.a_id
WHERE l.line_item_amount < 500
GROUP BY v.vendor_name, l.line_item_amount
ORDER BY l.line_item_amount ASC;

SELECT *
FROM midterm_view2;

-- Other SQL queries I learned

SELECT *
FROM invoice
WHERE YEAR(invoice_date) = 2018 AND MONTH(invoice_date) = 7;

DELETE FROM vendor
WHERE vendor_id = '3';

SELECT vendor_name
FROM vendor
LIMIT 5;

SELECT
	v.vendor_name AS 'Vendor Name',
	i.invoice_date AS 'Invoice Date', 
    i.invoice_number AS 'Invoice Number'
FROM vendor v
	INNER JOIN invoice i
		ON v.vendor_id = i.in_id
WHERE i.invoice_number REGEXP '^263' 
LIMIT 5;

SELECT *
FROM invoice
WHERE NOT(invoice_date > '2018-07-26');

