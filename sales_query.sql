CREATE TABLE sales (
    id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO sales (id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 1200.00),
(2, 'Mouse', 'Electronics', 25.00),
(3, 'Desk Chair', 'Furniture', 150.00),
(4, 'Keyboard', 'Electronics', 45.00),
(5, 'Dining Table', 'Furniture', 300.00);

SELECT * FROM sales;

SELECT 
    category, 
    SUM(price) AS total_revenue 
FROM 
    sales 
GROUP BY 
    category 
ORDER BY 
    total_revenue DESC;
