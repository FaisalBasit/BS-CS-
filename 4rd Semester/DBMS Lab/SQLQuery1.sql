create database DBMS_LAB;

use DBMS_LAB;

//LAB # 2
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


//LAB # 3

CREATE TABLE dept(
  deptno INT PRIMARY KEY,
  deptname VARCHAR(50),
  deptloc VARCHAR(50),
  commission DECIMAL(10, 2)
 );


 SELECT * FROM dept;


CREATE TABLE emp(
  empid INT PRIMARY KEY,
  deptno INT FOREIGN KEY (deptno) REFERENCES dept (deptno),
  empname VARCHAR(50),
  empsalary DECIMAL(7,2),
  empprofession VARCHAR(50),
  emphiredate DATE,
 );
  SELECT * FROM emp;

  INSERT INTO dept VALUES
  (50,'Advertising','MIAMI',500),
  (20,'HR','MIAMI',700),
  (52,'Sales','MIAMI',300)
  ;

  INSERT INTO emp VALUES
  (1001,50,'Smith',500,'Clerk','2002-04-02'),
  (1002,20,'Faisal',5000,'Manager','2001-02-01'),
  (1003,50,'Ahmed',900,'Driver','1980-12-21'),
  (1004,52,'Farhan',900,'Sales person','1991-10-21'),
  (1005,50,'Furqan',2000,'Graphic Designer','1999-11-21')
  ;
  UPDATE emp SET empsalary = 600 WHERE empname = 'Smith';

  update emp set empsalary=5000;

  update emp set emphiredate='2000-04-02' where empprofession='Clerk';

  delete emp where emphiredate<'1981-12-21';

  update emp set deptno=1003 where deptno=1002;
  delete from dept
  where deptno=1002;

  DELETE FROM emp WHERE deptno = (SELECT deptno FROM dept WHERE deptname = 'Sales');
  DELETE FROM dept WHERE deptname = 'Sales';

  DELETE FROM emp WHERE empsalary > 2000;
 UPDATE dept SET commission = 1000 WHERE deptno = 20;

 CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    grade VARCHAR(10),
    address VARCHAR(100)
);

SELECT * FROM Student;

INSERT INTO Student (student_id, student_name, age, grade, address)
VALUES (1, 'Faisal', 20, 'A', 'Burns Road');

UPDATE Student
SET age = 16
WHERE student_id = 1;

DELETE FROM Student
WHERE student_id = 1;

INSERT INTO Student VALUES 
(2, 'Muhammad Faisal', 19, 'A', 'Bahadurabad'),
(3, 'Rehan', 16, 'B', 'Malir Cantt'),
(4, 'Farhan', 12, 'B+', 'Nipa'),
(5, 'Furqan', 19, 'A', 'Gulshan'),
(6, 'Abdul', 16, 'B', 'Bahria Town');

UPDATE Student
SET grade = 'A+'
WHERE student_name = 'Muhammad Faisal';

DELETE FROM Student
WHERE grade = 'B';


UPDATE Student
SET age = age + 1;

UPDATE Student
SET address = 'Malir'
WHERE student_name = 'Farhan';

DELETE FROM Student
WHERE age < 15;

UPDATE Student
SET grade = 'B'
WHERE student_id = 5;
