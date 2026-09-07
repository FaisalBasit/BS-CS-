Create DATABASE DBMS_LAB#5;

USE DBMS_LAB#5;



CREATE TABLE employee(
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50),
  emp_address VARCHAR(50),
  skill VARCHAR(50),
  proj_id INT
 );

  SELECT * FROM employee;
  SELECT * FROM equipment;

CREATE TABLE equipment(
  eqp_id INT PRIMARY KEY,
  emp_id INT FOREIGN KEY (emp_id) REFERENCES employee(emp_id),
  eqp_type VARCHAR(50),
  project VARCHAR(50)
 );  
 
  INSERT INTO employee VALUES
  (1001,'Faisal','Burns Road','Developer',10),
  (1002,'Ahmed','Nipa','Engineer',11),
  (1003,'Ali','Malir','Designer',12)
  ;

  INSERT INTO equipment VALUES
  (110,1001,'Laptop','Mumbai Project'),
  (111,1002,'Welding Machine','Renovation Project'),
  (112,1003,'Laptop','Dubai Project')
  ;

  

  SELECT * FROM employee
  INNER JOIN equipment ON employee.emp_id = equipment.emp_id;

  SELECT employee.emp_id,employee.emp_name,equipment.eqp_id,equipment.eqp_type FROM employee
  JOIN equipment ON employee.emp_id = equipment.emp_id
  WHERE equipment.eqp_type = 'Welding Machine';

  SELECT employee.emp_id,employee.emp_name,equipment.project FROM equipment
  JOIN employee ON employee.emp_id = equipment.emp_id
  WHERE equipment.project='Mumbai Project';

  SELECT employee.emp_id,employee.emp_name,equipment.eqp_id FROM equipment
  JOIN employee ON employee.emp_id = equipment.emp_id
  WHERE equipment.eqp_id=110;



CREATE TABLE salesman(
  salesman_id INT PRIMARY KEY,
  name VARCHAR(50),
  city VARCHAR(50),
  commision DECIMAL(7,2),
 );

CREATE TABLE customer(
  customer_id INT PRIMARY KEY,
  cust_name VARCHAR(50),
  city VARCHAR(50),
  grade VARCHAR(50),
  salesman_id INT FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id)
 );

 
 CREATE TABLE orders(
  ord_no INT PRIMARY KEY,
  purch_amt INT,
  order_date date,
  customer_id INT FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  salesman_id INT FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id)
 );


 SELECT * FROM salesman;
 SELECT * FROM customer; 
 SELECT * FROM orders;



 INSERT INTO salesman VALUES
 (1,'Faisal','Karachi',100),
 (2,'Ahmed','Karachi',200),
 (3,'Ali','Karachi',150);

 INSERT INTO CUSTOMER VALUES
 (101, 'ABC Corporation', 'New York', 1, 1),
 (102, 'XYZ Industries', 'Los Angeles', 2, 2),
 (103, 'LMN Enterprises', 'Chicago', 1, 3),
 (104, 'PQR Ltd.', 'Houston', 3, NULL);  

 INSERT INTO ORDERS VALUES
 (1001, 500.00, '2024-04-01', 101, 1),
 (1002, 750.00, '2024-04-05', 102, 2),
 (1003, 1000.00, '2024-04-10', 101, 1),
 (1004, 1200.00, '2024-04-15', 103, 3),
 (1005, 800.00, '2024-04-20', 104, NULL);
 
SELECT s.NAME AS Salesman_Name, c.CUST_NAME AS Customer_Name
FROM SALESMAN s
INNER JOIN CUSTOMER c ON s.SALESMAN_ID = c.SALESMAN_ID;

SELECT CUST_NAME, CITY FROM CUSTOMER
ORDER BY SALESMAN_ID ASC, CUST_NAME ASC;

SELECT s.salesman_id, s.name AS Salesman_Name FROM SALESMAN s
LEFT JOIN CUSTOMER c ON s.SALESMAN_ID = c.SALESMAN_ID
ORDER BY s.SALESMAN_ID ASC;

SELECT c.cust_name, c.city, o.ord_no, o.order_date, o.purch_amt
FROM CUSTOMER c
INNER JOIN ORDERS o ON c.customer_id = o.customer_id

UNION ALL

SELECT oc.cust_name, oc.city, o.ord_no, o.order_date, o.purch_amt
FROM ORDERS o
LEFT JOIN CUSTOMER oc ON o.customer_id = oc.customer_id
WHERE oc.customer_id IS NULL;

CREATE TABLE EMP (
    EMPNO INT PRIMARY KEY,
    ENAME VARCHAR(100),
    JOB VARCHAR(50),
    MGR INT,
    HIREDATE DATE,
    SAL DECIMAL(10, 2),
    COMM DECIMAL(10, 2),
    DEPTNO INT
);

select * from emp
INSERT INTO EMP VALUES
(1001, 'Farhan', 'Clerk', 7902, '1980-12-17', 800.00, NULL, 20),
(1002, 'Furqan', 'Salesman', 7698, '1981-02-20', 1600.00, 300.00, 30),
(1003, 'Wariz', 'Salesman', 7698, '1981-02-22', 1250.00, 500.00, 30),
(1004, 'Faisal', 'Manager', 7839, '1981-04-02', 2975.00, NULL, 20),
(1005, 'Fahad', 'Manager', 7839, '1981-05-01', 2850.00, NULL, 30),
(1006, 'Raza', 'Manager', 7839, '1981-06-09', 2450.00, NULL, 10);

SELECT SAL, COUNT(*) AS num_employees FROM EMP
GROUP BY SAL;

SELECT HIREDATE FROM EMP
ORDER BY HIREDATE DESC;

SELECT HIREDATE FROM EMP
ORDER BY HIREDATE ASC;

SELECT EMPNO, ENAME, SAL, SAL + 20 AS INCREMENT FROM EMP;

SELECT EMPNO, ENAME, SAL, SAL + 100 AS INCREMENT FROM EMP
WHERE JOB = 'Manager';

SELECT EMPNO, ENAME, SAL, SAL + 500 AS INCREMENT FROM EMP
WHERE JOB = 'Salesman';

SELECT EMPNO, ENAME, SAL, SAL + 50 AS INCREMENT FROM EMP
WHERE JOB = 'Clerk';

SELECT ENAME, SAL * 0.08 AS eight_percent_salary FROM EMP
WHERE JOB = 'Salesman';

SELECT EMPNO, ENAME, SAL * 12 AS ANNUAL_SALARY FROM EMP;

SELECT EMPNO, ENAME, SAL * 6 AS SIX_MONTH_SALARY FROM EMP;

SELECT EMPNO, ENAME, SAL * 2 AS TWO_MONTH_SALARY FROM EMP
WHERE JOB = 'Manager';

SELECT EMPNO, ENAME, SAL * 1 AS SALARY FROM EMP;

SELECT EMPNO, ENAME, SAL / 30 AS DAILY_WAGES FROM EMP;

SELECT EMPNO, ENAME, SAL / 30 AS DAILY_WAGES FROM EMP
WHERE JOB = 'Manager';

SELECT LOWER('MUHAMMAD FAISAL') AS lower_case_name;

SELECT SUBSTRING(ENAME, 1, 2) AS first_two_characters FROM EMP;

SELECT MIN(SAL) AS min_salary FROM EMP;

SELECT MAX(SAL) AS max_salary FROM EMP;

SELECT ENAME, LEN(ENAME) AS ename_length FROM EMP;

SELECT JOB, LEN(JOB) AS job_length FROM EMP;

SELECT SUM(SAL) AS total_salary FROM EMP;

SELECT * FROM EMP
WHERE DEPTNO = (
    SELECT DEPTNO FROM DEPT
    WHERE LOC = 'Newark'
);

SELECT * FROM EMP
WHERE DEPTNO = (
    SELECT DEPTNO FROM DEPT
    WHERE DNAME = 'ACCOUNTING'
);

ALTER TABLE EMP
ADD CONSTRAINT FK_DEPTNO_EMP FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO);

CREATE TABLE DEPT (
    DEPTNO INT PRIMARY KEY,
    DNAME VARCHAR(50),
    LOC VARCHAR(50)
);

select * from DEPT

INSERT INTO DEPT VALUES
(10, 'ACCOUNTING', 'Newark'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');

SELECT COUNT(*) AS num_employees FROM EMP;

SELECT SUM(SAL) AS total_salary FROM EMP;

SELECT COUNT(*) AS num_managers FROM EMP
WHERE JOB = 'Manager';

SELECT COUNT(DISTINCT DEPTNO) AS num_departments FROM EMP;

SELECT JOB, AVG(SAL) AS avg_salary FROM EMP
GROUP BY JOB;

SELECT MAX(SAL) AS max_salary, MIN(SAL) AS min_salary FROM EMP;

SELECT AVG(SAL) AS avg_salary_dept_10 FROM EMP
WHERE DEPTNO = 10;

SELECT JOB, AVG(SAL) AS avg_salary, SUM(SAL) AS sum_salary FROM EMP
WHERE JOB != 'Clerk'
GROUP BY JOB;

SELECT DEPTNO, MIN(SAL) AS min_salary, AVG(SAL) AS avg_salary FROM EMP
WHERE DEPTNO != 10
GROUP BY DEPTNO;
