-- Lightweight schema reference for the Domino's Pizza analytics project
CREATE TABLE customers (custid INT PRIMARY KEY, first_name VARCHAR(8), last_name VARCHAR(7), email VARCHAR(255), phone VARCHAR(32), address VARCHAR(255), city VARCHAR(100), state VARCHAR(100), postal_code VARCHAR(20));
CREATE TABLE pizza_types (pizza_type_id VARCHAR(50) PRIMARY KEY, name VARCHAR(100), category VARCHAR(50), ingredients TEXT);
CREATE TABLE pizzas (pizza_id VARCHAR(14) PRIMARY KEY, pizza_type_id VARCHAR(50), size VARCHAR(3), price DECIMAL(10,2));
CREATE TABLE orders (order_id INT PRIMARY KEY, order_date DATE, order_time VARCHAR(8), custid INT, status VARCHAR(32));
CREATE TABLE order_details (order_details_id INT PRIMARY KEY, order_id INT, pizza_id VARCHAR(14), quantity INT);

-- Relationships:
-- customers -> orders
-- orders -> order_details
-- pizza_types -> pizzas
-- pizzas -> order_details
