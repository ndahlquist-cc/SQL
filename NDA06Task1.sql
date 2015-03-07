SELECT '' AS 'Nicole Dahlquist';

SELECT '' AS 'PROG2220: Section 3';

SELECT '' AS 'Assignment 6: Task 1';

SELECT curdate() AS 'Current System Date';

USE ap;

SELECT '';

SELECT '' AS '*** Q1. Textbook Exercise 11-1 (p. 351) [2 points] ***';

CREATE INDEX myIndex_ND
	ON vendors (vendor_zip_code);

SELECT ROW_COUNT() AS 'CREATE INDEX: rows affected';

DROP INDEX myIndex_ND
	ON vendors;

SELECT ROW_COUNT() AS 'DELETE INDEX: rows affected';

USE ex;

SELECT '';

SELECT '' AS '*** Q2. Textbook Exercise 11-2 (p. 351) [7 points] ***';

DROP TABLE IF EXISTS members_groups;
DROP TABLE IF EXISTS groups;
DROP TABLE IF EXISTS members;


CREATE TABLE groups
(
	group_id	INT			AUTO_INCREMENT PRIMARY KEY,
	group_name	VARCHAR(50)	NOT NULL
);


CREATE TABLE members
(
	member_id	INT			AUTO_INCREMENT	PRIMARY KEY,
	first_name	VARCHAR(50)		NOT NULL,
	last_name	VARCHAR(50)		NOT NULL,
	address		VARCHAR(100)	NOT NULL,
	city		VARCHAR(25)		NOT NULL,
	state		CHAR(2),
	phone		VARCHAR(15)
);

CREATE TABLE members_groups
(
	member_id	INT		NOT NULL,
	group_id	INT		NOT NULL,
	CONSTRAINT member_id_fk_ND 
		FOREIGN KEY (member_id) REFERENCES members (member_id),
	CONSTRAINT group_id_fk_ND
		FOREIGN KEY (group_id) REFERENCES groups (group_id)
);

SELECT '';

SELECT '' AS '*** Q3. Textbook Exercise11-3 (p. 351) [9 points] ***';

INSERT INTO members VALUES 
	(DEFAULT, 'Nicole', 'Dahlquist', '123 Kenogami', 'Thunder Bay', 'ON', '807-555-1212'),
	(DEFAULT, 'Meyer', 'Tanuan', '299 Doon Valley Drive', 'Kitchener', 'ON', '519-555-5555');

SELECT ROW_COUNT() AS 'INSERT: rows affected';

INSERT INTO members VALUES 
	(DEFAULT, 'Mercy', 'Watson', '54 Deckawoo Drive', 'Minneapolis', 'MN', '555-555-1212'),
	(DEFAULT, 'Baby', 'Lincoln', '52 Deckawoo Drive', 'Minneapolis', 'MN', '555-555-5555');

SELECT ROW_COUNT() AS 'INSERT: rows affected';

INSERT INTO groups  VALUES 
	(DEFAULT, 'KW BlackBerry Developers'),
	(DEFAULT, 'Canada Technology Triangle .NET Users');

SELECT ROW_COUNT() AS 'INSERT: rows affected';

INSERT INTO groups VALUES 
	(DEFAULT, 'Book Club'),
	(DEFAULT, 'Bicycle Coalition');

SELECT ROW_COUNT() AS 'INSERT: rows affected';

INSERT INTO members_groups VALUES
	(1, 1),
	(3, 1),
	(4, 2);

SELECT ROW_COUNT() AS 'INSERT: rows affected';

INSERT INTO members_groups VALUES 
	(1, 2),
	(2, 1),
	(2, 2);

SELECT ROW_COUNT() AS 'INSERT: rows affected';

SELECT group_name, last_name, first_name
FROM groups g JOIN members_groups mg
	ON g.group_id = mg.group_id
JOIN members m
	ON mg.member_id = m.member_id
ORDER BY group_name, last_name, first_name;