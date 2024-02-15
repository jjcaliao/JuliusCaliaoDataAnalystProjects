-- DELETE syntax

/*
DELETE FROM table_name
WHERE condition;
*/

-- LIMIT syntax 
/*
DELETE FROM table_table
LIMIT row_count;
*/


set sql_safe_updates=0;
set FOREIGN_KEY_CHECKS=0; -- enable these to allow delete and updating records in dataset

DELETE FROM customers
WHERE country = 'France'
ORDER BY creditLimit
LIMIT 5;

DELETE FROM employees
WHERE firstName = 'Diane';

select * from employees where firstName = 'Diane';

