-- SQL PRACTICE FILE
-- Basic SQL commands for learning (PostgreSQL / MySQL compatible)

-- 1. Create Database
CREATE DATABASE practice_db;

-- 2. Create Table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    age INT
);

-- 3. Insert Data
INSERT INTO users (name, email, age) VALUES
('Rashed', 'rashed@example.com', 22),
('Rahim', 'rahim@example.com', 25),
('Karim', 'karim@example.com', 19),
('Nadia', 'nadia@example.com', 23);

-- 4. Select All Data
SELECT * FROM users;

-- 5. Select Specific Columns
SELECT name, email FROM users;

-- 6. Filter with WHERE
SELECT * FROM users
WHERE age > 20;

-- 7. AND condition
SELECT * FROM users
WHERE age > 20 AND name = 'Rashed';

-- 8. OR condition
SELECT * FROM users
WHERE age < 20 OR name = 'Nadia';

-- 9. Order By Ascending
SELECT * FROM users
ORDER BY age ASC;

-- 10. Order By Descending
SELECT * FROM users
ORDER BY age DESC;

-- 11. Limit Results
SELECT * FROM users
LIMIT 3;

-- 12. Count Rows
SELECT COUNT(*) FROM users;

-- 13. Update Data
UPDATE users
SET age = 26
WHERE name = 'Rahim';

-- 14. Delete Data
DELETE FROM users
WHERE name = 'Karim';

-- 15. Add New Column
ALTER TABLE users
ADD COLUMN country VARCHAR(50);

-- 16. Rename Column
ALTER TABLE users
RENAME COLUMN name TO full_name;

-- 17. Drop Table
DROP TABLE users;

-- END OF PRACTICE FILE
