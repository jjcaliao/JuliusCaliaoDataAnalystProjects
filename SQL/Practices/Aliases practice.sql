SELECT concat_ws(' ', firstName, lastName) from employees; -- concatenate first name and last name into full name

SELECT concat_ws(' ', firstName, lastName) 'Full Name'  from employees order by `Full Name`; -- renames the concatenated row

SELECT 
    orderNumber `Order No.`,
    SUM(priceEach * quantityOrdered) total
FROM
    orderdetails
GROUP BY `Order No.`
HAVING total > 60000; -- selects orders whose total amount is greater than 60000. It uses column aliases in GROUP BY and HAVING clauses.

SELECT * FROM employees e;

SELECT e.firstName, e.lastName FROM employees e ORDER BY e.firstName; -- assign alias e to table employee