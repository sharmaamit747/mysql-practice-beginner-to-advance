DROP DATABASE IF EXISTS interview_db;
CREATE DATABASE interview_db;
USE interview_db;

-- USERS TABLE
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    age INT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ORDERS TABLE
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    amount DECIMAL(10,2),
    status VARCHAR(20),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- SEED USERS
INSERT INTO users (name, email, age, created_at) VALUES
('Amit Sharma', 'amit@gmail.com', 28, '2024-01-10 10:00:00'),
('Rohit Verma', 'rohit@yahoo.com', 35, '2024-02-15 11:30:00'),
('Neha Singh', 'neha@gmail.com', 24, '2024-03-01 09:15:00'),
('Priya Patel', 'priya@gmail.com', 30, '2024-03-20 14:45:00'),
('Karan Mehta', 'karan@outlook.com', 40, '2024-04-05 16:10:00'),
('Sneha Iyer', 'sneha@gmail.com', 22, '2024-04-10 18:20:00');

-- SEED ORDERS
INSERT INTO orders (user_id, amount, status, created_at) VALUES
(1, 1200.00, 'paid', '2024-04-01 10:10:00'),
(1, 3500.50, 'shipped', '2024-04-03 12:00:00'),
(2, 800.00, 'pending', '2024-04-05 14:30:00'),
(2, 1500.00, 'paid', '2024-04-07 09:45:00'),
(3, 4200.00, 'paid', '2024-04-10 11:20:00'),
(4, 500.00, 'cancelled', '2024-04-12 16:40:00'),
(5, 9000.00, 'paid', '2024-04-15 13:55:00'),
(6, 1100.00, 'shipped', '2024-04-18 19:00:00');
