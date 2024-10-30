-- To Create the Database
CREATE DATABASE BootcampWeek4_db;
USE BootcampWeek4_db;

-- To create the CUSTOMERS table
CREATE TABLE IF NOT EXISTS CUSTOMERS (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    Address VARCHAR(255)
);

-- Create the ITEMS table
CREATE TABLE IF NOT EXISTS ITEMS (
    Item_id INT PRIMARY KEY,
    Item_name VARCHAR(255),
    price DECIMAL(10, 2),
    department VARCHAR(255)
);

-- Create the SALES table
CREATE TABLE IF NOT EXISTS SALES (
    Date DATE,
    Order_id INT PRIMARY KEY,
    Item_id INT,
    Customer_id INT,
    Quantity INT,
    Revenue DECIMAL(10, 2),
    FOREIGN KEY (Item_id) REFERENCES ITEMS(Item_id),
    FOREIGN KEY (Customer_id) REFERENCES CUSTOMERS(customer_id)
);

-- To insert sample data into the CUSTOMERS table
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, Address) VALUES
(1, 'John', 'Doe', '123 Elm St, Springfield'),
(2, 'Jane', 'Smith', '456 Oak St, Springfield'),
(3, 'Alice', 'Johnson', '789 Maple St, Springfield');

-- To insert sample data into the ITEMS table
INSERT INTO ITEMS (Item_id, Item_name, price, department) VALUES
(1, 'Widget A', 10.00, 'Gadgets'),
(2, 'Widget B', 15.50, 'Gadgets'),
(3, 'Widget C', 20.00, 'Gadgets');

-- Insert sample data into the SALES table
INSERT INTO SALES (Date, Order_id, Item_id, Customer_id, Quantity, Revenue) VALUES
('2023-01-15', 1005, 1, 1, 5, 50.00),
('2023-01-20', 1006, 2, 2, 2, 31.00),
('2023-01-25', 1007, 3, 3, 1, 20.00),
('2023-03-18', 1008, 1, 1, 3, 75.00),
('2023-03-18', 1009, 2, 2, 1, 30.00),
('2023-03-19', 1010, 3, 3, 10, 50.00),
('2022-12-18', 1011, 1, 1, 2, 20.00),
('2022-12-20', 1012, 2, 2, 1, 15.50),
('2022-12-21', 1013, 2, 3, 2, 50.00),
('2022-11-25', 1014, 2, 3, 1, 30.00);
