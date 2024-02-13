SELECT distinct state from customers order by state; -- removes duplicate states

SELECT distinct state, city from customers where state IS NOT NULL; -- removes duplicate states and city, and removes records where state is not null