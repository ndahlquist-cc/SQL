SELECT '' AS 'Nicole Dahlquist';

SELECT '' AS 'PROG2220: Section 3';

SELECT '' AS 'Assignment 5: Task 1';

SELECT curdate() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';

SELECT '' AS '*** Q1. MSG Exercise 8-1 [4 points] ***';

SELECT FORMAT(list_price, 2) AS list_price, 
	CAST(discount_percent AS SIGNED) AS discount_percent, 
	ROUND((list_price * discount_percent/100), 2) AS discount_amount, 
	CAST(DATE_FORMAT(date_added, '%m-%d') AS CHAR(5)) AS month_day_added
FROM products;



SELECT '';

SELECT '' AS '*** Q2. MSG Exercise 9-2 [4 points] ***';

SELECT order_date, DATE_FORMAT(order_date, '%Y') AS order_year, 
	DATE_FORMAT(order_date, '%b-%d-%Y') AS order_date, 
	DATE_FORMAT(order_date, '%l:%i %p') AS twelve_hour, 
	DATE_FORMAT(order_date, '%m/%d/%y %H:%i') AS date_time
FROM orders;

SELECT '';

SELECT '' AS '*** Q3. MSG Exercise 9-3 [5 points] ***';

SELECT card_number, LENGTH(card_number), RIGHT(card_number, 4), 
REPLACE(card_number, LEFT(card_number, 12), 'XXXX-XXXX-XXXX-')
FROM orders;

SELECT '';

SELECT '' AS '*** Q4. MSG Exercise 9-4 [4 points] ***';

SELECT order_id, order_date, DATE_ADD(order_date, INTERVAL 2 DAY) AS est_ship_date,
	IFNULL(ship_date, 'Not Shipped') AS ship_date, 
	DATEDIFF(ship_date, order_date) AS days_to_ship
FROM orders
WHERE order_date >= '2012-04-01' AND order_date < '2012-05-01';
