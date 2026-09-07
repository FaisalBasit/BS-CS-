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
  (1001,'Faisal','Mumbai','Senior Developer',10),
  (1002,'Ahmed','Dubai','Engineer',11),
  (1003,'Ali','Karachi','Designer',12),
  (1004,'Furqan','Mumbai','Junior Developer',10)
  ;

  INSERT INTO equipment VALUES
  (110,1001,'Laptop','Project A'),
  (111,1002,'Welding Machine','Project B'),
  (112,1003,'Laptop','Project C'),
  (113,1004,'Laptop','Project A')
  ;

  SELECT * FROM employee
  INNER JOIN equipment ON employee.emp_id=equipment.emp_id;

  SELECT employee.emp_id,employee.emp_name,equipment.eqp_id,equipment.eqp_type FROM employee
  JOIN equipment ON employee.emp_id=equipment.emp_id
  WHERE equipment.eqp_type = 'Welding Machine';

  SELECT employee.emp_id,employee.emp_name,equipment.project FROM equipment
  JOIN employee ON employee.emp_id=equipment.emp_id
  WHERE equipment.project='Mumbai Project';

  SELECT employee.emp_id,employee.emp_name,equipment.eqp_id FROM equipment
  JOIN employee ON employee.emp_id=equipment.emp_id
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

 INSERT INTO salesman VALUES
 (1001,'Faisal','Karachi',100),
 (1002,'Ahmed','Karachi',200),
 (1003,'Ali','Karachi',150);