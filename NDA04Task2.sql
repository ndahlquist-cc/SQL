SELECT '' AS 'Nicole Dahlquist';

SELECT '' AS 'PROG2220: Section 3';

SELECT '' AS 'Assignment 4: Task 2';

SELECT curdate() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';

SELECT '' AS '*** Q1. MGS Exercise 7-1 [8 points] ***';
SELECT '';
SELECT '' AS '***a.***';

INSERT INTO categories (category_name)
VALUES ('Wind');

SELECT '';

SELECT '' AS '***b.***';

UPDATE categories
SET category_name = 'String'
WHERE category_id = LAST_INSERT_ID();

SELECT '';

SELECT '' AS '***c.***';

DELETE FROM categories
WHERE category_id = LAST_INSERT_ID();

SELECT '';

SELECT '' AS '*** Q2. MGS Exercise 7-4 [6 points] ***';
SELECT '';
SELECT '' AS '***a.***';

INSERT INTO products
(product_id, category_id, product_code, product_name,
	description, list_price, discount_percent,
	date_added)
VALUES
(DEFAULT, 4, 'dgx_640', 'Yamaha DGX 640 Digital Piano',
	'This is the Yamaha DGX 640 Digital Piano with 
	88 keys', '845.95', '10.00', NOW());


SELECT '';
SELECT '' AS '***b.***';

UPDATE products
SET discount_percent = 30.00
WHERE product_id = LAST_INSERT_ID();

SELECT '';

SELECT '' AS '*** Q3. MGS Exercise 7-7 [6 points] ***';

SELECT '';
SELECT '' AS '***a.***';

INSERT INTO customers
(customer_id, email_address, password, first_name,
	last_name, shipping_address_id, billing_address_id)
VALUES
(DEFAULT, 'joel@murach.com', "", 'Joel', 'Murach', NULL, NULL);


SELECT '';
SELECT '' AS '***b.***';

UPDATE customers
SET password = 's3cr3t'
WHERE email_address = 'joel@murach.com';