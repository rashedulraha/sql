SELECT * FROM student;

-- SELECT COUNT(*)

SELECT  AVG(marks) 
FROM student ;

-- FIND CUSTOMERS NAME FIRST LETTER
SELECT name 
FROM student 
WHERE name LIKE  'N%';