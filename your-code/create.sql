CREATE DATABASE IF NOT EXISTS company; 
USE company;

-- 2. Create tables
CREATE TABLE cars (
	car_id INT PRIMARY KEY,
    VIN CHAR(17), 
	manufacturer VARCHAR(40) NOT NULL, 
	model VARCHAR (40) NOT NULL,
	Year INT (4) NOT NULL, 
	Color VARCHAR(40) NOT NULL 
);


CREATE TABLE IF NOT EXISTS customer (
	customer_id INT PRIMARY KEY, 
    name VARCHAR(40) NOT NULL, 
    phone_number VARCHAR(20), 
	mail VARCHAR(40) NOT NULL,
    adress VARCHAR (40) NOT NULL, 
    city VARCHAR (40) NOT NULL, 
    state VARCHAR (40) NOT NULL, 
    country VARCHAR (40) NOT NULL, 
    zip INT
);

CREATE TABLE IF NOT EXISTS salesman (
	staff_id INT PRIMARY KEY, 
    name VARCHAR(20) NOT NULL,
    store VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS invoices (
	invoice_id INT PRIMARY KEY, 
    date CHAR(10), 
    car INT,
    customer INT,
    sales INT
);

ALTER TABLE invoices
	ADD FOREIGN KEY (car) 
REFERENCES cars(car_id)
ON DELETE SET NULL;

ALTER TABLE invoices
	ADD FOREIGN KEY (customer) 
REFERENCES customer(customer_id)
ON DELETE SET NULL;

ALTER TABLE invoices
	ADD FOREIGN KEY (sales) 
REFERENCES salesman(staff_id)
ON DELETE SET NULL;
