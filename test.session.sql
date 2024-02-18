-- @block
USE office;
SHOW TABLES;
SELECT * FROM Departments;

-- @block
SELECT * FROM Employees;

-- @block
SHOW COLUMNS FROM Employees;

-- @block
INSERT INTO Employees
(ssn, name, lot)
VALUES
('919291', 'Steven', 10),
('010290', 'Jeff', 19);

-- @block
SELECT * FROM Employees;

-- @block 
DELETE FROM Employees WHERE
lot = 19;

-- @block
SELECT * FROM Employees;

-- @block
UPDATE Employees
SET name = 'John'
WHERE ssn = '919291';








