SELECT '' AS 'Nicole Dahlquist';
SELECT '' AS 'PROG2220: Section 3';
SELECT '' AS 'Assignment 3: Task 3';
SELECT curdate() AS 'Current System Date';

USE swexpert;

SELECT '';
SELECT '' AS '*** Q1. SWE Exercise 1 [2 points] ***';

SELECT ROUND(AVG(score), 1) AS 'Average Score'
FROM evaluation
WHERE evaluatee_id = 105;

SELECT '';
SELECT '' AS '*** Q2. SWE Exercise 2 [3 points] ***';

SELECT COUNT(c_id) AS 'Number of Certified'
FROM consultant
WHERE c_id IN
	(SELECT c_id
	 FROM consultant_skill
	 WHERE skill_id = 1);


SELECT '';
SELECT '' AS '*** Q3. SWE Exercise 3 [5 points] ***';

SELECT t1.c_first, t1.c_last
FROM 
	(SELECT c.c_first, c.c_last
	 FROM consultant c 
	 JOIN project_consultant pc
		ON c.c_id = pc.c_id
	 JOIN project p
		ON pc.p_id = p.p_id
	 GROUP BY c_first, c_last) t1
WHERE c_first = 'Mark' AND c_last = 'Myers';
	
SELECT '';
SELECT '' AS '*** Q4. SWE Exercise 4 [5 points] ***';

