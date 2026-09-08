create database MyDB

use MyDB

CREATE TABLE user_tbl (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(100) NOT NULL,
    age INT,
	year_of_graduation INT,
    batch_number VARCHAR(50),
    linkedin_id VARCHAR(255),
    email VARCHAR(255) NOT NULL UNIQUE,
	roll_num VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

SELECT * FROM user_tbl

INSERT INTO user_tbl VALUES 
('Faisal', 'Male', 21, 2026,'2022F','https://www.linkedin.com/in/muhammad-faisal-42080a219/','faisal@example.com','2022F-BCS-152', '123'),
('Saad', 'Male', 21, 'saad@example.com','saad12','321');

drop table user_tbl

