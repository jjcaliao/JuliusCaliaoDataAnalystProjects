SELECT * from employees;

SELECT * from employees where jobTitle = 'Sales Rep'; 

SELECT * from employees where jobTitle = 'Sales Rep' AND officeCode = 2; -- with AND

SELECT * from employees where jobTitle = 'Sales Rep' OR officeCode = 1 order by officeCode, lastName DESC; -- with OR. ASC for ascending and DESC for descending

SELECT * from employees where NOT jobTitle = 'Sales Rep'; -- with NOT 

SELECT * from employees where jobTitle <> 'Sales Rep'; -- with <> which  means 'not equal to'

SELECT * from employees where officeCode <= 5 order by officeCode; -- with <

SELECT * from employees where officeCode >= 5 order by officeCode; -- with >

SELECT * from employees where officeCode BETWEEN 2 AND 5 order by officeCode; -- with BETWEEN

SELECT * from employees where officeCode IN (1, 2, 3); -- with IN(value1, value2, ...)

SELECT firstName, lastName, jobTitle from employees where reportsTo IS NULL; -- with IS NULL