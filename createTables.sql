CREATE DATABASE fictional_business;

USE fictional_business;

CREATE TABLE
    customers(
        `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `name` VARCHAR(100) NOT NULL,
        `email` VARCHAR(100) NOT NULL,
        `location` VARCHAR(255) NOT NULL
    );

CREATE TABLE
    orders(
        `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `customer_id` INT NOT NULL,
        FOREIGN KEY (`customer_id`) REFERENCES `customers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
        `total_amount` DECIMAL(10, 2) NOT NULL,
        `order_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE
    products(
        `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `category_id` INT NOT NULL,
        FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
        `name` VARCHAR(100) NOT NULL,
        `description` VARCHAR(255) NOT NULL,
        `price` DECIMAL(10, 2) NOT NULL
    );

CREATE TABLE
    categories(
        `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `name` VARCHAR(100) NOT NULL
    );

CREATE TABLE
    order_items(
        `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `order_id` INT NOT NULL,
        FOREIGN KEY (`order_id`) REFERENCES `orders`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
        `product_id` INT NOT NULL,
        FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
        `qty` INT NOT NULL,
        `price` DECIMAL(10, 2) NOT NULL
    );


-- Insert sample data into Customers table
INSERT INTO Customers (id, name, email, location)
VALUES
    (1, 'John Doe', 'john.doe@example.com', 'New York'),
    (2, 'Jane Smith', 'jane.smith@example.com', 'Los Angeles'),
    (3, 'Alice Johnson', 'alice.johnson@example.com', 'Chicago'),
    (4, 'Bob Brown', 'bob.brown@example.com', 'Houston'),
    (5, 'Eva Wilson', 'eva.wilson@example.com', 'Miami');

-- Insert sample data into Orders table
INSERT INTO Orders (id, customer_id, order_date, total_amount)
VALUES
    (1, 1, NULL, 150.00),
    (2, 2, NULL, 75.50),
    (3, 3, NULL, 200.25),
    (4, 1, NULL, 120.75),
    (5, 4, NULL, 180.00);

-- Insert sample data into Categories table
INSERT INTO Categories (id, name)
VALUES
    (1, 'Electronics'),
    (2, 'Clothing'),
    (3, 'Home Appliances');

-- Insert sample data into Products table
INSERT INTO Products (id, category_id, name, description, price)
VALUES
    (1, 1, 'Laptop', 'High-performance laptop', 800.00),
    (2, 1, 'Smartphone', 'Latest smartphone model', 500.00),
    (3, 2, 'T-shirt', 'Cotton T-shirt', 20.00),
    (4, 2, 'Jeans', 'Denim jeans', 40.00),
    (5, 3, 'Coffee Maker', 'Automatic coffee maker', 75.00);

-- Insert sample data into Order_Items table
INSERT INTO Order_Items (id, order_id, product_id, qty, price)
VALUES
    (1, 1, 1, 2, 800.00),
    (2, 1, 3, 3, 20.00),
    (3, 2, 2, 1, 500.00),
    (4, 3, 4, 2, 40.00),
    (5, 4, 1, 1, 800.00);




-- INSERT INTO
--     customers (`name`, `email`, `location`)
-- VALUES (
--         'Eva Johnson',
--         'eva.johnson@example.com',
--         'Los Angeles'
--     ), (
--         'Michael Brown',
--         'michael.brown@example.com',
--         'Chicago'
--     ), (
--         'Olivia Wilson',
--         'olivia.wilson@example.com',
--         'Miami'
--     ), (
--         'Liam Davis',
--         'liam.davis@example.com',
--         'Houston'
--     ), (
--         'Sophia Lee',
--         'sophia.lee@example.com',
--         'Dallas'
--     ), (
--         'Noah Moore',
--         'noah.moore@example.com',
--         'San Francisco'
--     ), (
--         'Emma White',
--         'emma.white@example.com',
--         'Seattle'
--     ), (
--         'James Taylor',
--         'james.taylor@example.com',
--         'Boston'
--     ), (
--         'Ava Anderson',
--         'ava.anderson@example.com',
--         'Denver'
--     ), (
--         'Logan Martinez',
--         'logan.martinez@example.com',
--         'Phoenix'
--     );

-- INSERT INTO
--     orders (
--         `id`,
--         `customer_id`,
--         `total_amount`,
--         `order_date`
--     )
-- VALUES (NULL, 2, 36.00, NULL), (NULL, 4, 29.75, NULL), (NULL, 1, 89.25, NULL), (NULL, 2, 54.00, NULL), (NULL, 3, 110.50, NULL), (NULL, 4, 42.50, NULL);

-- -- Insert order items for different orders and products

-- INSERT INTO
--     order_items (
--         `order_id`,
--         `product_id`,
--         `qty`,
--         `price`
--     )
-- VALUES (1, 4, 2, 18.00), (2, 2, 1, 29.75), (3, 2, 3, 29.75), (4, 4, 3, 18.00), (5, 5, 2, 55.25), (6, 6, 1, 42.50);

-- -- Insert 7 rows into 'products' table

-- INSERT INTO
--     products (`category_id`, `name`, `description`, `price`)
-- VALUES (
--     1,
--         'Product D',
--         'Description for Product D',
--         45.00
--     ), (
--         3,
--         'Product E',
--         'Description for Product E',
--         29.75
--     ), (
--         1,
--         'Product F',
--         'Description for Product F',
--         37.50
--     ), (
--         2,
--         'Product G',
--         'Description for Product G',
--         18.00
--     ), (
--         1,
--         'Product H',
--         'Description for Product H',
--         55.25
--     ), (
--         2,
--         'Product I',
--         'Description for Product I',
--         42.50
--     ), (
--         3,
--         'Product J',
--         'Description for Product J',
--         60.00
--     );

-- -- Insert 3 rows into 'categories' table

-- INSERT INTO categories (`name`)
-- VALUES ('Beauty and Health'), ('Sports and Outdoors'), ('Toys and Games');