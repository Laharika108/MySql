create database if not exists employee_management;
use employee_management;
drop table if  exists employees;
create table employees(
id INT PRIMARY KEY,
name VARCHAR(20),
department VARCHAR(5),
salary DOUBLE
);


insert into employees values(1001, 'Laharika','ECE', 30000);
insert into employees values(1002, 'Neelima', 'ECE',25000);
insert into employees values(1003, 'sindhuja', 'CSE',50000);
insert into employees values(1050, 'Neelu', 'MME', 70000);
describe employees;
desc employees;

select* from employees;


