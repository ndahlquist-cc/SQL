SELECT '' AS 'Nicole Dahlquist';
SELECT '' AS 'PROG2220: Section 3';
SELECT '' AS 'Assignment 3: Task 2';
SELECT curdate() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Q1. MGS Exercise 6-1 [2 points] ***';

SELECT DISTINCT category_name
FROM categories c
WHERE category_id IN
	(SELECT category_id
	 FROM products p)
ORDER BY category_name;

SELECT '';
SELECT '' AS '*** Q2. MGS Exercise 6-3 [3 points] ***';

SELECT category_name
FROM categories c
WHERE category_id NOT IN
	(SELECT category_id
	FROM products p
	WHERE product_id);

SELECT '';
SELECT '' AS '*** Q3. MGS Exercise 6-6 [5 points] ***';

SELECT c.email_address, o.order_id, o.order_date
FROM customers c JOIN orders o
	ON c.customer_id = o.customer_id
GROUP BY c.email_address
ORDER BY order_date;
