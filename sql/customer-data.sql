-- customer-data.sql

DROP TABLE IF EXISTS customers;v

CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    customer_type VARCHAR(20) NOT NULL,
    join_date DATE NOT NULL
);

SELECT * FROM customers;
select * from sales;
