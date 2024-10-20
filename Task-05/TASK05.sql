-- 1 --
CREATE TABLE Customer (
	ID INT PRIMARY KEY,
	Fname VARCHAR(30),
	Lname VARCHAR(30),
	Gender VARCHAR(1),
	Email VARCHAR(30),
	Address VARCHAR(30),
	Balance FLOAT,
);


-- 2 --
-- INSERT DATA --

INSERT INTO Customer (ID, Fname, Lname, Address, Gender, Email, Balance)  VALUES ('1', 'Samer', 'Zahran', 'Salt', 'M', 'Samer@test.com', '27.4');
INSERT INTO Customer (ID, Fname, Lname, Address, Gender, Email, Balance)  VALUES ('2', 'Huda', 'Alzoubi', 'Jaresh', 'F', 'Huda@test.com', '49.4');
INSERT INTO Customer (ID, Fname, Lname, Address, Gender, Email, Balance)  VALUES ('3', 'Asalah', 'Obeidat', 'Ajloun', 'F', 'Asalah@test.com', '45.2');
INSERT INTO Customer (ID, Fname, Lname, Address, Gender, Email, Balance)  VALUES ('4', 'Mazen', 'Alkhateeb', 'Salt', 'M', 'Mazen@test.com', '21');
INSERT INTO Customer (ID, Fname, Lname, Address, Gender, Email, Balance)  VALUES ('5', 'Majed', 'Bataineh', 'Ajloun', 'M', 'Majed@test.com', '32.7');


-- 3 --
SELECT Fname
FROM Customer
ORDER BY Balance DESC;

-- 4 --
SELECT ID, Email
FROM Customer
WHERE Lname LIKE '%b%';

-- 5 --
SELECT Fname
FROM Customer
WHERE Gender = 'M' AND Address = 'Salt' or Gender = 'F' AND Address = 'Ajloun'
ORDER BY Fname DESC;

-- 6 --
SELECT Address
FROM Customer
WHERE GENDER = 'M' and Balance BETWEEN 25 AND 30
ORDER BY Balance;

-- 7 --
SELECT TOP 3 Lname
FROM Customer
ORDER BY BALANCE ASC;

-- 8 --
UPDATE Customer
SET Address = 'irbid'
WHERE ID = '4';

-- 9 --
DELETE Customer
WHERE Address = 'salt';

-- 10 --
UPDATE Customer
SET Balance = '35.8'
WHERE Address = 'ajloun';

-- TEST --
DROP TABLE Customer

SELECT *
FROM Customer;
