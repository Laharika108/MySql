-- we have 2 types of functions 
-- 1) Scalar
-- 2) Aggregate

SELECT * FROM products;
SELECT * FROM productlines;
SELECT * FROM customers;
SELECT * FROM payments;
SELECT * FROM orders;
SELECT * FROM orderdetails;
SELECT * FROM offices;
SELECT * FROM employees;

-- String scalar fumctions
SELECT productCode, productName, ucase(productLine) from products;
SELECT customerNumber, concat(contactLastName, '' , contactLastName) as fullname from customers;
SELECT customerName, customerNumber, CHAR_LENGTH (customerName)  as length from customers;
SELECT productCode, LEFT(productCode, 3) as code, right(productCode, 4) as region from products;
select productCode, productName, substr(productName, 6, 3) as substring, trim(substr(productName, 6, 3)) as trim from products;

-- numeric scalar functions
SELECT productCode, productName, buyPrice, ROUND(buyPrice, 0), ROUND(buyPrice, 1), FLOOR(buyPrice), CEIL(buyPrice) FROM products;
SELECT productCode, productName, buyPrice, POWER(buyPrice, 2), EXP(buyPrice) FROM products;
-- this function returns e^x, where x is the argument, and 'e' is Euler's constant, the base of the natural logarithms.
SELECT EXP(1); --   2.7182818^1

-- date scalar functions
SELECT customerNumber, paymentDate, DAY(paymentDate), DAYNAME(paymentDate), WEEK(paymentDate), WEEKOFYEAR(paymentDate), MONTH(paymentDate), MONTHNAME(paymentDate), YEAR(paymentDate) FROM payments;
SELECT customerNumber, paymentDate, DAYOFWEEK(paymentDate), DAYOFMONTH(paymentDate), DAYOFYEAR(paymentDate) FROM payments;
DESC payments;
SELECT customerNumber, paymentDate, DATEDIFF(CURRENT_DATE(), paymentDate) FROM payments;
-- how quickly were the orders shipped?
SELECT orderNumber, orderDate, shippedDate, DATEDIFF(shippedDate, orderDate) FROM orders;
-- assuming the return date is within 20 days from orderDate, dispay the return date for each order
SELECT orderNumber, orderDate, DATE_ADD(orderDate, INTERVAL 20 DAY) FROM orders;


SELECT orderNumber, orderDate, DATE_FORMAT(orderDate, '%Y') FROM orders;
SELECT orderNumber, orderDate, DATE_FORMAT(orderDate, '%D %b, %Y') FROM orders;
SELECT orderNumber, orderDate, DATE_FORMAT(orderDate, '%D %M, %y') FROM orders;
