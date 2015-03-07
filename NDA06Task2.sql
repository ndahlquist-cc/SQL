-- cd C:\xampp\mysql\bin
-- mysql -u root -p < G:\mysql\swexpert\swexpert.sql
-- mysql -u root -p --force < G:\mysql\NDA06Task2.sql 1> G:\mysql\NDA06Task2.out 2> G:\mysql\NDA06Task2.err


SELECT "" AS "Nicole Dahlquist";
SELECT "" AS "PROG2220: Section 3";
SELECT "" AS "Assignment 6: Task 2";

SELECT SYSDATE() AS "Current System Date";

USE swexpert;

SELECT "";
SELECT "" AS "*** Task 2, Q1. SWE Exercise 1 [7 points] ***";

ALTER TABLE project_consultant
ADD total_days INT DEFAULT 0;

-- This gives incorrect values -- 
UPDATE project_consultant
SET total_days = (roll_off_date-roll_on_date)
WHERE p_id IN (1, 2, 3, 4, 5, 6, 7);

SELECT ROW_COUNT() AS 'UPDATE: rows affected';

SELECT *
FROM project_consultant;

ALTER TABLE project_consultant
DROP COLUMN total_days;

SELECT "";
SELECT "" AS "*** Task 2, Q2. SWE Exercise 2 [5 points] ***";

DROP TABLE IF EXISTS evaluation_audit;

CREATE TABLE evaluation_audit
(
	audit_id	INT		PRIMARY KEY		AUTO_INCREMENT,
	audit_e_id	INT		NOT NULL,
	audit_score	INT,
	audit_user	VARCHAR(20)
);

INSERT INTO evaluation_audit
VALUES (DEFAULT, 100, 90, NULL);

SELECT ROW_COUNT() AS 'INSERT: rows affected';

SELECT *
FROM evaluation_audit;

SELECT "";
SELECT "" AS "*** Task 2, Q3. SWE Exercise 3 [9 points] ***";

ALTER TABLE evaluation_audit
MODIFY audit_user VARCHAR(20) 	NOT NULL;

ALTER TABLE evaluation_audit
ADD audit_date DATETIME;

INSERT INTO evaluation_audit
VALUES (DEFAULT, 100, 95, USER(), SYSDATE());

SELECT ROW_COUNT() AS 'INSERT: rows affected';

SELECT *
FROM evaluation_audit;

-- NEGATIVE TEST CASE?
INSERT INTO evaluation_audit
VALUES (DEFAULT, 100, 99, NULL, NULL);

SELECT ROW_COUNT() AS 'INSERT: rows affected';

SELECT "";
SELECT "" AS "*** Task 2, Q4. SWE Exercise 4 [2 points] ***";

-- NEGATIVE TEST CASE?
INSERT INTO project_skill
VALUES (NULL, 1);

SELECT ROW_COUNT() AS 'INSERT: rows affected';

SELECT "";
SELECT "" AS "*** Task 2, Q5. SWE Exercise 5 [2 points] ***";

-- NEGATIVE TEST CASE?
DELETE FROM consultant
WHERE c_id = 100;

SELECT ROW_COUNT() AS 'DELETE: rows affected';