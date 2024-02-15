USE sql_store;
USE sql_inventory;

SELECT * FROM CuSTOMERS
-- WHERE customer_id=1
ORDER BY first_name;

SELECT last_name, first_name, points, (points + 10) * 100 AS discount_factor FROM CUSTOMERS;

SELECT name, unit_price AS original_price, ROUND(unit_price*1.1, 2) AS new_price FROM PRODUCTS;

SELECT * FROM CUSTOMERS WHERE birth_date > '1990-01-01';

SELECT first_name, last_name, address, birth_date FROM CUSTOMERS WHERE birth_date=(SELECT MIN(birth_date) FROM CUSTOMERS);