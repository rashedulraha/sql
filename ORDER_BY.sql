-- SELECT * FROM student ORDER BY marks DESC LIMIT 4;
USE collage;


SELECT * FROM student;
INSERT INTO student VALUE (202, "Nakib",56,"D","Kholna");
INSERT INTO student VALUE (205, "",56,"D","Kholna");

--  INSERT DATA ONLY SPECIFIC  COLOUMNS

INSERT INTO student (rollno ,marks ,  grade , city) VALUE (560,89,"D","MANIKGONGO");
-- insert into multiple vlaue in database 
INSERT INTO student (rollno , name , marks, grade ,city) VALUE 
(580,"nothing",89,"A","Dhaka"),
(581,"nothing more",79,"A","Naogaon"),
(582,"hello my sql",89,"A","khulna");



 -- check value is not  null
 SELECT  name,marks ,grade FROM student 
 WHERE name IS NOT NULL;
 