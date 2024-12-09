use demodb;
use classicmodels;
SELECT * from department;
select * from employee;
select * from  employees;
select  * from customers;
select customerNumber, customerName, employeeNumber,city, concat(firstname, '', lastname) as fullname from employees, customers where salesRepEmployeeNumber = employeeNumber AND city='Melbourne';
 -- display orderdetails of all orders
 select * from orders;
 select * from orderdetails;
 select orders.orderNumber, orderDate, customerNumber, status,productCode  from orders join orderdetails on orders.ordernumber = orderdetails.orderNumber;
 
 -- display order number, orderDate and number of products in each order
SELECT 
    orders.orderNumber, orderDate, COUNT(productCode)
FROM
    orders
        JOIN
    orderDetails ON orders.orderNumber = orderDetails.orderNumber
GROUP BY orders.orderNumber;

-- display the number of payments done by each customer and display customerNumber and customerName
Select * from customers;
select * from payments;
select 
	c.customerNumber, c.customerName, count(p.customerNumber) as customernumber
From 
	customers c
		join
	payments p on c.customerNumber = p.customerNumber
    GROUP BY c.customerNumber;

-- display employee information of employees in each office
SELECT employees.employeeNumber, employees.lastName, employees.firstName, employees.extension, employees.email, employees.officeCode, offices.city, offices.country
FROM employees
JOIN offices 
ON employees.officeCode = offices.officeCode;
					-- (or)
select * from employees;
select * from offices;
SELECT e.employeeNumber, concat(firstName, '' , lastName) as Fullname from employees e join offices o on e.officeCode = o.officeCode group by e.employeeNumber