create database DBMS_LAB;

use DBMS_LAB;

CREATE TABLE Person(
  CNIC INT PRIMARY KEY,
  Name VARCHAR(50),
  Age INT,
  Nationality VARCHAR(50),
  Gender VARCHAR(10),
);

INSERT INTO Person Values(42301, 'Faisal', 20, 'Pakistani', 'Male');
INSERT INTO Person Values(42302, 'Bilal', 20, 'Pakistani', 'Male');
INSERT INTO Person Values(42303, 'Furqan', 21, 'Pakistani', 'Male');
INSERT INTO Person Values(42304, 'Farhan', 22, 'Pakistani', 'Male');
INSERT INTO Person Values(42305, 'Ahsan', 19, 'Pakistani', 'Male');

SELECT * FROM Person;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    date_of_birth DATE,
    gender VARCHAR(10),
    address VARCHAR(255)
);

SELECT * FROM Customer;

INSERT INTO Customer VALUES
(1, 'Faisal', '2003-03-03', 'Male', 'Bahdurabad, Karachi'),
(2, 'Bilal', '2004-09-20', 'Male', 'Burns Road, Karachi'),
(3, 'Furqan', '2002-03-10', 'Male', 'Bahdurabad, Karachi'),
(4, 'Farhan', '2004-11-28', 'Male', 'Saddar, Karachi'),
(5, 'Ahsan', '2000-07-03', 'Male', 'DHA, Karachi');

CREATE TABLE Orders(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    product_name VARCHAR(255),
    quantity INT,
    total_price INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

INSERT INTO Orders VALUES
(1, 1, '2024-03-28', 'Laptop', 1, 1200),
(2, 2, '2024-03-27', 'Smartphone', 2, 800),
(3, 3, '2024-03-26', 'Headphones', 1, 100),
(4, 1, '2024-03-25', 'Tablet', 1, 500),
(5, 4, '2024-03-24', 'Speaker', 1, 150);

SELECT * FROM Orders;

ALTER TABLE Person
ADD Email VARCHAR(100);

SELECT * FROM Person;

UPDATE Person
SET Email = 'faisal@gmail.com'
WHERE CNIC = 42301;

UPDATE Person
SET Email = 'bilal@gmail.com'
WHERE CNIC = 42302;

UPDATE Person
SET Email = 'furqan@gmail.com'
WHERE CNIC = 42303;

UPDATE Person
SET Email = 'farhan@gmail.com'
WHERE CNIC = 42304;

UPDATE Person
SET Email = 'ahsan@gmail.com'
WHERE CNIC = 42305;

ALTER TABLE Person
ADD CONSTRAINT Email UNIQUE (Email);

CREATE TABLE Employee (
    emp_num INT,
    emp_name VARCHAR(10) NOT NULL,
    dept_num INT NOT NULL,
	email VARCHAR(50),
    CONSTRAINT emp_pk PRIMARY KEY (emp_num),
    CONSTRAINT deptno_positive CHECK (dept_num > 0 AND dept_num < 10),
	CONSTRAINT emp_email_unique UNIQUE (email)
);

SELECT * FROM Employee;

INSERT INTO Employee VALUES (1, 'Faisal', 5, 'faisal@gmail.com');

