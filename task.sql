CREATE DATABASE xyz_company;
USE xyz_company;

CREATE TABLE employee (
id INT PRIMARY KEY ,
name VARCHAR(100),
salary INT 
);

INSERT  INTO  employee 
(id , name, salary)
VALUE 
(1,"adan",25000),
(2,"bob",30000),
(3,"casey",28000);


SELECT * FROM employee;