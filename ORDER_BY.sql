-- ORDER FILE EXAMPLE

-- Show top 4 students by marks
SELECT * FROM student 
ORDER BY marks DESC 
LIMIT 4;

-- Select database
USE college;

-- Show all data
SELECT * FROM student;

-- Insert single rows
INSERT INTO student VALUES 
(202, "Nakib", 56, "D", "Khulna");

INSERT INTO student VALUES 
(205, "Unknown", 56, "D", "Khulna");

-- Insert data into specific columns
INSERT INTO student (rollno, marks, grade, city) 
VALUES (560, 89, "D", "Manikganj");

-- Insert multiple rows
INSERT INTO student (rollno, name, marks, grade, city) 
VALUES
(580, "Nothing", 89, "A", "Dhaka"),
(581, "Nothing More", 79, "A", "Naogaon"),
(582, "Hello MySQL", 89, "A", "Khulna");

-- Check values where name is not NULL
SELECT name, marks, grade 
FROM student
WHERE name IS NOT NULL;

-- Check