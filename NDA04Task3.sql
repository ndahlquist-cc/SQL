SELECT '' AS 'Nicole Dahlquist';

SELECT '' AS 'PROG2220: Section 3';

SELECT '' AS 'Assignment 4: Task 3';

SELECT curdate() AS 'Current System Date';

USE swexpert;

SELECT '';

SELECT '' AS '*** Q1. SWE Exercise 1 [2 points] ***';

INSERT INTO consultant
VALUES (106, 'Dahlquist', 'Nicole', 'R', '123 Kenogami',
	'Nowheresville', 'MI', '12345', '8075551212', 
	'Ndahlquist@nowheresville.com');

SELECT '';

SELECT '' AS '*** Q2. SWE Exercise 2 [2 points] ***';

INSERT INTO client
VALUES (7, 'City of Toronto', 'Ford', 'Rob', '4167778888');


SELECT '';

SELECT '' AS '*** Q3. SWE Exercise 3 [3 points] ***';

INSERT INTO project
VALUES (77, 'New Toronto Business', 7, 106, NULL);

SELECT '';

SELECT '' AS '*** Q4. SWE Exercise 1 [3 points] ***';


UPDATE project
SET parent_p_id = 77
WHERE parent_p_id IS NULL
AND p_id != 77;




