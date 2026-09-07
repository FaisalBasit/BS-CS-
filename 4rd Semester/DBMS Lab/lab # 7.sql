create database lab7

use lab7

CREATE TABLE Customer (
  customer_id INT PRIMARY KEY,
  cust_name VARCHAR(50),
  cust_address VARCHAR(50),
  cust_city VARCHAR(50)
);

CREATE TABLE Seller (
  seller_id INT PRIMARY KEY,
  seller_name VARCHAR(50),
  seller_address VARCHAR(50),
  seller_city VARCHAR(50)
);

CREATE TABLE Product (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  price DECIMAL(10, 2),
  p_description VARCHAR(50),
  seller_id INT FOREIGN KEY(seller_id) REFERENCES Seller(seller_id)
);
CREATE TABLE CART(
  cart_id INT PRIMARY KEY,
  product_id INT FOREIGN KEY(product_id) REFERENCES product(product_id),
  customer_id INT FOREIGN KEY(customer_id) REFERENCES Customer(customer_id)
)


CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  purch_amt DECIMAL(10, 2),
  order_date DATE,
  cart_id INT FOREIGN KEY(cart_id) REFERENCES Cart(cart_id),
);

select * from Customer
select * from Seller

select * from Product
select * from CART
select * from Orders

DROP TABLE Orders

INSERT INTO Customer VALUES
(1, 'Faisal', 'Burns Road','Karachi'),
(2, 'Farhan', 'Malir Cantt','Lahore'),
(3, 'Khizer', 'Defence','Islamabad');

INSERT INTO Seller VALUES
(101, 'Raza', 'Tower','Karachi'),
(102, 'Daniyal', 'Zainab Market','Karachi'),
(103, 'Anas', 'Korangi','Karachi');

INSERT INTO Product VALUES
(201, 'Smartphone', 20000.00,'Redmi 9C', 101),
(202, 'T Shirt', 500.00,'Cotton T-shirt', 102),
(203, 'Smartphone', 21000.00,'Realme C30', 103);

INSERT INTO Orders VALUES
(301, 500.00, '2024-01-15', 501),
(302, 21000.00, '2024-02-20', 502),
(303, 20000.00, '2024-03-25', 503);

INSERT INTO CART VALUES
(501, 202, 1),
(502, 203, 2),
(503, 201, 3);