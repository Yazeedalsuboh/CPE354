-- 1- CREATE A TABLE --
CREATE TABLE Employee (
	employee_ID INT NOT NULL,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(30) NOT NULL,
    gender CHAR(1),
    salary FLOAT
);

-- 2a --
ALTER TABLE Employee
ADD CONSTRAINT EMP_PK PRIMARY KEY (Employee_ID, email);

-- 2b --
ALTER TABLE Employee
ALTER COLUMN first_name VARCHAR(20) NOT NULL;

ALTER TABLE Employee
ALTER COLUMN last_name VARCHAR(20) NOT NULL;

-- 2c --
ALTER TABLE Employee
ADD address VARCHAR(20);

-- 2d --
EXEC sp_rename 'Employee.last_name', 'lname', 'COLUMN';

-- 2e --
ALTER TABLE Employee
DROP COLUMN lname;