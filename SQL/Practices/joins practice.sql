CREATE TABLE members (
    member_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (member_id)
); -- create new table called members

CREATE TABLE committees (
    committee_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (committee_id)
); -- create new table called committees

INSERT INTO members(name) VALUES('John'),('Jane'),('Mary'),('David'),('Amelia'); -- insert values into members table

INSERT INTO committees(name) VALUES('John'),('Mary'),('Amelia'),('Joe'); -- insert values intol committees table

-- Inner join format: 

/*
SELECT column_list
FROM table_1
INNER JOIN table_2 ON join_condition;
 */
 
SELECT m.member_id, m.name AS member,  c.committee_id, c.name AS committee from members m INNER JOIN committees c ON c.name = m.name;
 
SELECT m.member_id, m.name AS member,  c.committee_id, c.name AS committee from members m INNER JOIN committees c USING(name); -- Because both tables use the same column to match, you can use the USING clause

-- left join format:

/*
SELECT column_list 
FROM table_1 
LEFT JOIN table_2 ON join_condition;
*/

SELECT 
    m.member_id, 
    m.name AS member, 
    c.committee_id, 
    c.name AS committee
FROM
    members m
LEFT JOIN committees c USING(name);

SELECT 
    m.member_id, 
    m.name AS member, 
    c.committee_id, 
    c.name AS committee
FROM
    members m
LEFT JOIN committees c USING(name)
WHERE c.committee_id IS NULL; -- finds members who are not committees

-- right join format:

/*
SELECT column_list 
FROM table_1 
RIGHT JOIN table_2 ON join_condition;
*/

SELECT 
    m.member_id, 
    m.name AS member, 
    c.committee_id, 
    c.name AS committee
FROM
    members m
RIGHT JOIN committees c USING(name);

SELECT 
    m.member_id, 
    m.name AS member, 
    c.committee_id, 
    c.name AS committee
FROM
    members m
RIGHT JOIN committees c USING(name)
WHERE m.member_id IS NULL; -- finds committees who are not members

-- cross join format:

/*
SELECT select_list
FROM table_1
CROSS JOIN table_2;
*/

SELECT 
    m.member_id, 
    m.name AS member, 
    c.committee_id, 
    c.name AS committee
FROM
    members m
CROSS JOIN committees c;


-- self join

SELECT 
    CONCAT(m.lastName, ', ', m.firstName) AS Manager,
    CONCAT(e.lastName, ', ', e.firstName) AS 'Direct report'
FROM
    employees e
INNER JOIN employees m ON 
    m.employeeNumber = e.reportsTo
ORDER BY 
    Manager;