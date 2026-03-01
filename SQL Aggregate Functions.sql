SELECT * FROM student;

-- SELECT COUNT(*)

SELECT  AVG(marks) 
FROM student ;

-- FIND CUSTOMERS NAME FIRST LETTER
SELECT name 
FROM student 
WHERE name LIKE  'N%';

-- The % Wildcard
SELECT city 
FROM student 
WHERE city LIKE '%na';

SELECT name 
FROM student 
WHERE name LIKE  'K_____';
 
  --  IN OPERATOR  
SELECT city FROM student 
WHERE city In ('patnitala','Gaganpur' ,'MANIKGONGO') ;

 -- selct and  use or operator 
 
 SELECT * FROM student WHERE city = 'patnitalDa' OR  'Gaganpur' OR 'MANIKGONGO';