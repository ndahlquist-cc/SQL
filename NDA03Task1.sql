SELECT '' AS 'Nicole Dahlquist';
SELECT '' AS 'PROG2220: Section 3';
SELECT '' AS 'Assignment 3: Task 1';
SELECT curdate() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Q1. MGS Exercise 5-1 [5 points] ***';

SELECT COUNT(order_id), SUM(tax_amount)
FROM orders;

SELECT '';
SELECT '' AS '*** Q2. MGS Exercise 5-2 [5 points] ***';

SELECT category_name, COUNT(product_id), MAX(list_price)
FROM categories c
JOIN products p
	ON c.category_id = p.category_id
GROUP BY category_name
ORDER BY COUNT(product_id) DESC;

SELECT '';
SELECT '' AS '*** Q3. MGS Exercise 5-6 [5 points] ***';

SELECT product_name, SUM((item_price - discount_amount)*quantity)
FROM products p
JOIN order_items o
	ON p.product_id = o.product_id
GROUP BY product_name
WITH ROLLUP