select * from employees;

select firstName, lastName from employees where lastName LIKE 't%'; -- Finds any lastName values that starts with "b"

select firstName, lastName from employees where lastName LIKE '%son'; -- Finds any lastName values that ends with "son"

select firstName, lastName from employees where lastName LIKE '%g%'; -- Finds any lastName values with "g" at any position

select firstName, lastName from employees where lastName LIKE 'b_%_%_%'; -- Finds any lastName values start with "b" and at least 4 characters long

select firstName, lastName from employees where lastName LIKE 'b%t'; -- Finds any lastName values start with "b" and end with "t"