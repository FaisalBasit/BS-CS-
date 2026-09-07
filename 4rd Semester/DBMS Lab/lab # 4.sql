create database DBMS_LAB#4;

use DBMS_LAB#4;

create table dept(
	dept_no int primary key,
	dept_name varchar(50),
	dept_loc varchar(50),
);

create table emp(
	emp_no int primary key,
	dept_no int foreign key(dept_no) references dept (dept_no),
	emp_name varchar(50),
	job varchar(50),
	mgr int,
	emp_salary decimal(7,2),
	emp_comm decimal(7,2),
	emp_phone int
);


SELECT * FROM dept;
SELECT * FROM emp;

INSERT INTO dept VALUES
(10,'Sales','BLOCK A'),
(20,'HR','BLOCK B'),
(30,'Finance','BLOCK C'),
(40,'IT','BLOCK D');



INSERT INTO emp VALUES
(1001, 10,'King', 'President', NULL, 5000, NULL,1234567890),
(1002, 20,'Jones', 'Manager', 7839 , 2975, NULL,1234567891),
(1003, 30,'Blake', 'Manager', 7839, 2850, NULL,1234567892),
(1004, 10,'Clark', 'Manager', 7839,  2450, NULL,1234567893),
(1005, 20,'Scott Martin', 'Analyst', 7566,  3000, NULL,1234567894),
(1006, 20,'Ford', 'Analyst', 7566,  3000, NULL,1234567895),
(1007, 30,'Turner', 'Salesman', 7698,  1500, 0.10,1234567896),
(1008, 30,'James', 'Clerk', 7698,  950, NULL,1234567897),
(1009, 30,'Miller', 'Salesman', 7698,  1250, 0.20,1234567898),
(1010, 30,'Allen', 'Salesman', 7698,  1600, 0.30,1234567899),
(1011, 30,'Ward', 'Salesman', 7698,  1250, 0.22,1234567810),
(1012, 10,'Smith', 'Clerk', 7782,  1300, NULL,1234567811);

SELECT emp_no FROM emp;
SELECT emp_name FROM emp;
SELECT dept_no FROM emp;

SELECT * FROM emp
WHERE emp_salary BETWEEN 500 AND 1500;

SELECT * FROM emp
WHERE emp_salary BETWEEN 1500 AND 2500;

SELECT * FROM emp
WHERE emp_salary BETWEEN 2600 AND 5000;

SELECT * FROM emp
WHERE emp_salary<2000;

SELECT * FROM emp
WHERE emp_salary>2000;

SELECT mgr = 7902,7566,7788 as q FROM emp;

SELECT * FROM emp WHERE mgr IN (7902, 7566, 7788);

SELECT * FROM emp
WHERE mgr BETWEEN 7092 AND 7788;

SELECT * FROM emp WHERE emp_name LIKE 'S%';

SELECT * FROM emp WHERE emp_name LIKE 'a%';

SELECT * FROM emp WHERE emp_name = 'Scott';

SELECT * FROM emp WHERE emp_name LIKE 'Scott%';

SELECT * FROM emp WHERE emp_name IN ('smith', 'king');

SELECT emp_name FROM emp
WHERE emp_name LIKE '%Martin';

SELECT * FROM emp WHERE (emp_name LIKE 'w%' OR emp_name LIKE 'k%') AND dept_no NOT IN (10, 20, 40);

SELECT emp_name FROM emp
WHERE emp_name LIKE 'W%' OR emp_name LIKE 'K%' AND dept_no != 10	AND dept_no != 20 AND dept_no != 40;

SELECT * FROM emp
WHERE emp_name LIKE 'Scott%' AND emp_name LIKE '%Martin';

SELECT * FROM emp WHERE emp_name LIKE 'scott%martin';

SELECT * FROM emp WHERE emp_name LIKE 'm%' AND dept_no = 30;

SELECT * FROM emp WHERE emp_name LIKE 'B%' AND job ='Manager';

SELECT * FROM emp WHERE job != 'Manager';

SELECT * FROM emp WHERE job not like 'A%';

SELECT * FROM emp WHERE job not like 'C%';

SELECT * FROM emp WHERE mgr IS NOT NULL;

SELECT emp_name FROM emp
WHERE job ='Manager' or job ='Clerk' AND dept_no=10;

SELECT * FROM emp WHERE (job = 'manager' OR job = 'clerk') AND dept_no = 10;

SELECT * FROM emp WHERE (job ='Analyst' OR job ='salesman') AND dept_no=30;

SELECT * FROM emp WHERE job IN ('analyst', 'salesman') AND dept_no = 30;


SELECT  * FROM emp WHERE job ='Clerk' AND emp_salary between 1000 and 2000;



SELECT * FROM emp WHERE job ='Manager' AND emp_salary between 2500 and 3000;

SELECT * FROM emp WHERE (job ='Manager' or job ='Clerk') OR (emp_salary between 1000 and 2000);

SELECT * FROM emp WHERE job ='Manager' or (emp_salary between 2000 and 3000);

SELECT * FROM emp WHERE emp_salary = 1500 AND (job = 'manager' OR job = 'salesman');
