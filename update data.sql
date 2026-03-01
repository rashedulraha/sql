-- Update data in database

SELECT * FROM student ; 
UPDATE student 
SET name='Abdullah', city = 'chandipur'
WHERE rollno  = 101;


-- set delete statement
DELETE FROM student WHERE rollno='101';