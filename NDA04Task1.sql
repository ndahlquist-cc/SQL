SELECT '' AS 'Nicole Dahlquist';

SELECT '' AS 'PROG2220: Section 3';

SELECT '' AS 'Assignment 4: Task 1';

SELECT curdate() AS 'Current System Date';

USE ap;

SELECT '';

SELECT '' AS '*** Q1. Textbook Exercise 7-4 [2 points] ***';

INSERT INTO invoices VALUES
(DEFAULT, 32, 'AX-014-027', '2011-01-08', '434.58', DEFAULT, 
	DEFAULT, 2, '2011-08-31', null);

SELECT '';

SELECT '' AS '*** Q2. Textbook Exercise 7-5 [2 points] ***';

INSERT INTO invoice_line_items VALUES
(LAST_INSERT_ID(), 1, 160, '180.23', 'Hard drive'),
(LAST_INSERT_ID(), 2, 527, '254.35', 'Exchange Server update');

SELECT '';

SELECT '' AS '*** Q3. Textbook Exercise 7-6 [2 points] ***';

UPDATE invoices
SET credit_total = (0.1 * invoice_total),
	payment_total = (invoice_total - credit_total)
WHERE invoice_id = LAST_INSERT_ID();

SELECT '';

SELECT '' AS '*** Q4. Textbook Exercise 7-9 [4 points] ***';

DELETE FROM invoice_line_items
WHERE invoice_id = LAST_INSERT_ID();
DELETE FROM invoices
WHERE invoice_id = LAST_INSERT_ID();
	 
