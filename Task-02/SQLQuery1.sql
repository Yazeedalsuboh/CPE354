CREATE TABLE Customer (
	Customer_ID varchar(10) NOT NULL,
	first_name varchar(20),
	last_name varchar(20)
);

-- A --
ALTER TABLE Customer
ADD CONSTRAINT Customer_ID_PK PRIMARY KEY(Customer_ID)

-- B --
ALTER TABLE Customer
ADD CONSTRAINT Customer_Fname_UNQ UNIQUE(First_name)

-- C --
ALTER TABLE Customer
ADD gender CHAR(1)

-- D --
ALTER TABLE Customer
ADD CONSTRAINT Customer_Gender_CHK CHECK (gender IN ('M', 'F'));

-- E --
ALTER TABLE Customer
ADD phone VARCHAR(10)

-- F --
ALTER TABLE Customer
ADD CONSTRAINT  Customer_Phone_DEF DEFAULT 'UNKNOWN' FOR phone;

-- G --
ALTER TABLE Customer
DROP CONSTRAINT Customer_Fname_UNQ;

-- H --
ALTER TABLE Customer
ALTER COLUMN phone VARCHAR(20)

CREATE TABLE Ordering (
	Ordering_ID INT,
	Ordering_date DATE,
	Customer_ID varchar(10) NOT NULL,
	CONSTRAINT Ordering_ID_PK PRIMARY KEY(Ordering_ID),
	CONSTRAINT Customer_Ordering_PK FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);
