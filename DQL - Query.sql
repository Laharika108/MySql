-- DQL 
select * from person_details;
select * from customers;
select * from orders;
-- display all customer details who belong to the city Singapore
SELECT 
    *
FROM
    customers
WHERE
    city = 'singapore';
-- display cutomerNumber, customerName and phone of customers having credit limit less than 50000
SELECT 
    customerNumber, customerName, phone
FROM
    customers
WHERE
    creditLimit < 50000;
-- display customerNumber, customerName, country of customers whose name starts with 'A'
SELECT 
    customerNUmber, customerName, country
FROM
    customers
WHERE
    customerName LIKE 'A%';
-- display cutomerNumber, customerName, phone, creditLimit of customers having credit limit between 50000 and 100000
SELECT 
    customerNumber, customerName, phone, creditLimit
FROM
    customers
WHERE
    creditLimit BETWEEN 50000 AND 100000;
-- display customerNumber, customerName, country of customers who belong to France, USA and Norway
select customerNumber, customerName, country from customers where country IN ('France', 'USA', 'Norway');
-- display customerName, state of customer whose state is null
SELECT 
    customerName, state
FROM
    customers
WHERE
    state IS NULL;

-- display customerName, state of customer whose state is not null
SELECT 
    customerName, state
FROM
    customers
WHERE
    state IS NOT NULL;
    
-- display state and customerName of cistomer whose state is not null and in ascending order of state
SELECT 
    state, customerName
FROM
    customers
WHERE
    state IS NOT NULL
ORDER BY
	state ASC, customerName DESC;
    

