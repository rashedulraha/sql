-- create database
CREATE DATABASE collage ;
 -- use database 
USE collage ;

-- CREATE TABLE student 
CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL , 
grade VARCHAR(1),city VARCHAR(20)
);
-- DROP TABLE student;

-- SELECT AND GET ALL TABLE DATA 
SELECT * FROM student ;

-- INSERT INTO TABLE DATA 
INSERT INTO student (rollno  , name, marks , grade , city ) VALUE
 (101,"RAHSEDUL",78,"C","NAOGARON"),
 (102,"Bhumika" , 89,"A","Dhaka"),
 (103,"Chetan" ,56,"C","Patnitala"),
 (104,"dharub" ,50,"D","Delhi"),
 (105,"emanuz" ,90,"A","Gaganpur");
 

-- Get all  table data 

SELECT * FROM student ; 
-- SELECT name , grade  FROM student;

