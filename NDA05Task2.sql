SELECT '' AS 'Nicole Dahlquist';

SELECT '' AS 'PROG2220: Section 3';

SELECT '' AS 'Assignment 5: Task 2';

SELECT curdate() AS 'Current System Date';

USE swexpert;

SELECT '';

SELECT '' AS '*** Q1. SWE Exercise 1 [4 points] ***';

SELECT ROUND(AVG(score), 2) AS average
FROM evaluation JOIN consultant
	ON evaluator_id = c_id
WHERE CONCAT(c_first, ' ', c_last) = CONCAT_WS(' ', 'Janet', 'Park');

SELECT '';

SELECT '' AS '*** Q2. SWE Exercise 2 [4 points] ***';

SELECT LPAD(p_id, 4, ' ') AS p_id, LPAD(c_id, 4, ' ') AS c_id,
	LPAD(TRUNCATE(DATEDIFF(roll_off_date, roll_on_date)/30.4, 0), 6, ' ') 
		AS months
FROM project_consultant;

SELECT '';

SELECT '' AS '*** Q3. SWE Exercise 3 [5 points] ***';

SELECT LPAD(c.c_id, 4, ' ') AS c_id, 
	LPAD(CONCAT_WS(', ', c_last, c_first), 17, ' ') AS full_name,
	LPAD(skill_id, 8, ' ') AS skill_id, 
	LPAD(CASE certification
		WHEN 'Y' THEN 'Certified'
		WHEN 'N' THEN 'Not Certified'
		ELSE 'Unknown'
	END, 14, ' ')
FROM consultant c JOIN consultant_skill cs
	ON c.c_id = cs.c_id