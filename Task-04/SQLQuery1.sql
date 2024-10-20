-- 1 --
-- Create Table --
CREATE TABLE Student (
	ID INT NOT NULL,
	Fname VARCHAR(15),
	Lname VARCHAR(15),
	Major VARCHAR(15),
	Address VARCHAR(15),
	Gender VARCHAR(1),
	GPA FLOAT,
);

-- 2 --
-- Alter Table --

-- PRIMARY KEY --
ALTER TABLE Student
ADD CONSTRAINT ID_PK PRIMARY KEY (ID);

-- Gender Constraint --
ALTER TABLE Student
ADD CONSTRAINT GENDER_CHK CHECK (Gender IN ('M', 'F'));


-- 3 --
-- INSERT DATA --

INSERT INTO Student (ID, Fname, Lname, Major, Address, Gender, GPA)  VALUES ('1', 'Ahmad', 'Hammad', 'Physics', 'Irbid', 'M', '3.4');
INSERT INTO Student (ID, Fname, Lname, Major, Address, Gender, GPA)  VALUES ('2', 'Ola', 'Alkhateeb', 'Physics', 'Amman', 'F', '3.1');
INSERT INTO Student (ID, Fname, Lname, Major, Address, Gender, GPA)  VALUES ('3', 'Farah', 'Hamouri', 'Chemistry', 'Irbid', 'F', '2.9');
INSERT INTO Student (ID, Fname, Lname, Major, Address, Gender, GPA)  VALUES ('4', 'Zain', 'Jaradat', 'Chemistry', 'Zarqa', 'M', '2.7');
INSERT INTO Student (ID, Fname, Lname, Major, Address, Gender, GPA)  VALUES ('5', 'Areej', 'Samhouri', 'Biology', 'Amman', 'F', '3');

-- 4 --
SELECT * 
FROM Student;

-- 5 --
SELECT Fname 
FROM Student;

-- 6 --
SELECT Fname + ' ' + Lname 
AS Full_Name 
FROM Student;

-- 7 -- 
SELECT Fname, Lname
FROM Student
WHERE Address = 'Irbid';

-- 8 --
SELECT DISTINCT Address
FROM Student;

-- 9 --
SELECT ID, Fname, GPA + 0.3
AS NEW_GPA
FROM Student;

-- 10 --
SELECT Fname, Major
FROM Student
WHERE Gender = 'F';