SQL QUICK REFERENCE (Basic + Advanced)

================ BASIC SQL =================

1.  SELECT Show data from a table SELECT * FROM users;

Select specific columns SELECT name, email FROM users;

------------------------------------------------------------------------

2.  INSERT Add new data to a table INSERT INTO users (name, email)
    VALUES (‘Rashed’, ‘rashed@gmail.com’);

------------------------------------------------------------------------

3.  UPDATE Update existing data UPDATE users SET name = ‘Rashedul’ WHERE
    id = 1;

------------------------------------------------------------------------

4.  DELETE Remove data DELETE FROM users WHERE id = 1;

------------------------------------------------------------------------

5.  CREATE TABLE Create a new table CREATE TABLE users ( id SERIAL
    PRIMARY KEY, name VARCHAR(100), email VARCHAR(100) );

------------------------------------------------------------------------

6.  WHERE Filter rows SELECT * FROM users WHERE id = 1;

------------------------------------------------------------------------

7.  ORDER BY Sort results SELECT * FROM users ORDER BY name ASC;

------------------------------------------------------------------------

8.  LIMIT Limit number of rows SELECT * FROM users LIMIT 5;

------------------------------------------------------------------------

9.  COUNT Count rows SELECT COUNT(*) FROM users;

============================================

================ ADVANCED SQL ==============

1.  JOIN Combine data from two tables SELECT users.name, orders.product
    FROM users JOIN orders ON users.id = orders.user_id;

------------------------------------------------------------------------

2.  LEFT JOIN Show all users even if they have no orders SELECT
    users.name, orders.product FROM users LEFT JOIN orders ON users.id =
    orders.user_id;

------------------------------------------------------------------------

3.  GROUP BY Group similar data SELECT department, COUNT(*) FROM
    employees GROUP BY department;

------------------------------------------------------------------------

4.  HAVING Filter grouped results SELECT department, COUNT() FROM
    employees GROUP BY department HAVING COUNT() > 5;

------------------------------------------------------------------------

5.  SUBQUERY Query inside another query SELECT name FROM users WHERE id
    IN ( SELECT user_id FROM orders );

------------------------------------------------------------------------

6.  EXISTS Check if related records exist SELECT name FROM users WHERE
    EXISTS ( SELECT * FROM orders WHERE users.id = orders.user_id );

------------------------------------------------------------------------

7.  CASE Conditional logic SELECT name, CASE WHEN salary > 50000 THEN
    ‘High Salary’ ELSE ‘Low Salary’ END FROM employees;

------------------------------------------------------------------------

8.  VIEW Create a virtual table CREATE VIEW user_emails AS SELECT name,
    email FROM users;

------------------------------------------------------------------------

9.  INDEX Improve search speed CREATE INDEX idx_user_email ON
    users(email);

------------------------------------------------------------------------

10. TRANSACTION Run multiple queries safely BEGIN;

UPDATE accounts SET balance = balance - 100 WHERE id = 1; UPDATE
accounts SET balance = balance + 100 WHERE id = 2;

COMMIT;

============================================
