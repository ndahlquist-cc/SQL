SELECT '' AS 'Nicole Dahlquist';

SELECT '' AS 'PROG2220: Section 3';

SELECT '' AS 'Assignment 5: Task 3';

SELECT curdate() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';

SELECT '' AS '*** Q1. MGS Exercise 12-3 [5 points] ***';

CREATE OR REPLACE VIEW order_item_products AS
SELECT o.order_id, o.order_date, o.tax_amount,
	o.ship_date, oi.item_price, oi.discount_amount,
	(oi.item_price - oi.discount_amount) AS final_price, 
	oi.quantity, ((oi.item_price - oi.discount_amount) * oi.quantity)
	AS item_total, p.product_name
FROM orders o JOIN order_items oi
	ON o.order_id = oi.order_id
JOIN products p
	ON oi.product_id = p.product_id;

SELECT '';

SELECT '' AS '*** Q2. MGS Exercise 12-4 [2 points] ***';

SELECT order_id, product_name, item_total
FROM order_item_products
ORDER BY item_total DESC;

SELECT '';

SELECT '' AS '*** Q3. MGS Exercise 12-5 [4 points] ***';

CREATE OR REPLACE VIEW product_summary AS
SELECT product_name, COUNT(order_id) AS order_count, SUM(item_total) AS order_total
FROM order_item_products
GROUP BY product_name;

SELECT '';

SELECT '' AS '*** Q4. MGS Exercise 12-6 [2 points] ***';

SELECT product_name, order_total
FROM product_summary
GROUP BY product_name
ORDER BY order_total DESC
LIMIT 5;