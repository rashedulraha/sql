-- =========================================
-- SQL QUERY NOTES
-- =========================================


-- =========================================
-- DATABASE COMMANDS
-- =========================================

-- Create Database
CREATE DATABASE my_database;

-- Delete Database
DROP DATABASE my_database;

-- Use Database
USE my_database;



-- =========================================
-- TABLE COMMANDS
-- =========================================

-- Create Table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    age INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Delete Table
DROP TABLE users;

-- Show All Tables
SELECT table_name FROM information_schema.tables;



-- =========================================
-- INSERT DATA
-- =========================================

INSERT INTO users (name, email, age)
VALUES ('Rashedul', 'rashed@example.com', 22);

INSERT INTO users (name, email, age)
VALUES 
('Rahim', 'rahim@example.com', 25),
('Karim', 'karim@example.com', 30);



-- =========================================
-- SELECT DATA
-- =========================================

-- Get All Data
SELECT * FROM users;

-- Specific Columns
SELECT name, email FROM users;

-- Limit Rows
SELECT * FROM users LIMIT 5;



-- =========================================
-- WHERE CONDITIONS
-- =========================================

SELECT * FROM users WHERE age = 25;

SELECT * FROM users WHERE age > 20;

SELECT * FROM users WHERE name = 'Rashedul';



-- =========================================
-- AND / OR
-- =========================================

SELECT * FROM users
WHERE age > 20 AND age < 30;

SELECT * FROM users
WHERE age = 25 OR age = 30;



-- =========================================
-- ORDER BY
-- =========================================

SELECT * FROM users
ORDER BY age ASC;

SELECT * FROM users
ORDER BY age DESC;



-- =========================================
-- UPDATE DATA
-- =========================================

UPDATE users
SET age = 26
WHERE name = 'Rahim';



-- =========================================
-- DELETE DATA
-- =========================================

DELETE FROM users
WHERE name = 'Karim';



-- =========================================
-- COUNT
-- =========================================

SELECT COUNT(*) FROM users;



-- =========================================
-- GROUP BY
-- =========================================

SELECT age, COUNT(*)
FROM users
GROUP BY age;



-- =========================================
-- LIKE SEARCH
-- =========================================

SELECT * FROM users
WHERE name LIKE 'R%';

SELECT * FROM users
WHERE email LIKE '%@gmail.com';



-- =========================================
-- JOIN
-- =========================================

-- Create another table
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INT,
    product_name VARCHAR(100),
    price INT
);

-- INNER JOIN
SELECT users.name, orders.product_name
FROM users
INNER JOIN orders
ON users.id = orders.user_id;



-- =========================================
-- INDEX
-- =========================================

CREATE INDEX idx_users_email
ON users(email);



-- =========================================
-- ALTER TABLE
-- =========================================

-- Add Column
ALTER TABLE users
ADD phone VARCHAR(20);

-- Delete Column
ALTER TABLE users
DROP COLUMN phone;



-- =========================================
-- TRUNCATE TABLE
-- =========================================

TRUNCATE TABLE users;



-- =========================================
-- VIEW
-- =========================================

CREATE VIEW user_view AS
SELECT name, email
FROM users;

SELECT * FROM user_view;