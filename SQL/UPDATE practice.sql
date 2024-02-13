-- resource: https://www.mysqltutorial.org/mysql-update-data.aspx

/* UPDATE syntax: 
UPDATE [LOW_PRIORITY] [IGNORE] table_name 
SET 
    column_name1 = expr1,
    column_name2 = expr2,
    ...
[WHERE
    condition];
*/

UPDATE employees SET email = 'mary.patterson@classicmodelcars.com' WHERE employeeNumber = 1056; -- changes the value of email for the record where employee number is 1056

UPDATE employees 
SET 
    lastname = 'Hill',
    email = 'mary.hill@classicmodelcars.com'
WHERE
    employeeNumber = 1056; -- changes multiple fields

SELECT firstname, lastname, email FROM employees WHERE employeeNumber = 1056;

UPDATE employees
SET email = REPLACE(email,'@classicmodelcars.com','@mysqltutorial.org')
WHERE
   jobTitle = "Sales Rep" AND
   officeCode = '6'; -- changes the domain part of the emails
   
SELECT firstName, lastName, email from employees where jobTitle = 'Sales Rep' AND officeCode = 6;