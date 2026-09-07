create database DBMS_LAB#9

use DBMS_LAB#9

CREATE TABLE departments (
    deptno INT PRIMARY KEY,
    dname VARCHAR(50),
    loc VARCHAR(50)
);
CREATE TABLE employees (
    empno INT PRIMARY KEY,
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(10, 2),
    comm DECIMAL(10, 2),
    deptno INT,
    FOREIGN KEY (deptno) REFERENCES departments(deptno)
);
INSERT INTO employees VALUES
(7499, 'Faisal', 'Salesman', 7566, '1981-02-20', 1600, 300, 30),
(7521, 'Ahmed', 'Salesman', 7566, '1981-02-22', 1250, 500, 30),
(7566, 'Farhan', 'Manager', 7839, '1981-04-02', 2975, NULL, 20),
(7698, 'Furqan', 'Manager', 7839, '1981-05-01', 2850, NULL, 30),
(7839, 'King', 'President', NULL, '1981-11-17', 5000, NULL, 10),
(7876, 'Raza', 'Analyst', 7698, '1983-01-12', 1100, NULL, 20);

INSERT INTO departments (deptno, dname, loc) VALUES
(10, 'Accounting', 'Dallas'),
(20, 'Research', 'New York'),
(30, 'Sales', 'Chicago');

SELECT * from employees
select * from departments

SELECT E.ename, D.dname, D.loc 
FROM employees E, departments D
WHERE E.deptno=D.deptno AND E.comm IS NOT NULL;

SELECT ename as manager from employees  
where empno=(select mgr from employees where job = 'manager')
;
SELECT E1.ename ,E.ename AS manager 
FROM employees E,employees E1 
WHERE E.empno = E1.mgr;

SELECT emp.ename AS employee_name,  mgr.ename AS manager_name
FROM employees emp, employees mgr 
where emp.mgr = mgr.empno AND 
emp.ename ='king';

SELECT emp.ename AS employee_name, mgr.ename AS manager_name
FROM employees emp
LEFT JOIN employees mgr ON emp.mgr = mgr.empno;

SELECT emp.ename AS employee_name, mgr.ename AS manager_name
FROM employees emp
JOIN employees mgr ON emp.mgr = mgr.empno
where mgr.ename= 'King';

SELECT E.ename AS employee_name, E.job, E.deptno, D.dname AS department_name
FROM employees E
JOIN departments D ON E.deptno = D.deptno
WHERE D.loc = 'New York';


SELECT emp.ename AS employee, emp.empno AS emp#, mgr.ename AS manager, mgr.empno AS manager#
FROM employees emp
LEFT JOIN employees mgr ON emp.mgr = mgr.empno;

SELECT DISTINCT E.job, D.loc
FROM employees E
JOIN departments D ON E.deptno = D.deptno
WHERE E.deptno = 30;


