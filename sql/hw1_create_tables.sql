create database hw1_customer_transactions;

CREATE TABLE IF NOT EXISTS product (
	product_id INT PRIMARY KEY,
	brand TEXT,
	product_line VARCHAR(15),
	product_class VARCHAR(15),
	product_size VARCHAR(10),
	list_price FLOAT8 NOT NULL
);

CREATE TABLE IF NOT EXISTS transaction (
	transaction_id INT PRIMARY KEY,
	product_id INT NOT NULL,
	customer_id INT NOT NULL,
	transaction_date VARCHAR(10) NOT NULL,
	online_order BOOL,
	order_status VARCHAR(10) NOT NULL,
	standard_cost FLOAT8 NOT null
);

CREATE TABLE IF NOT EXISTS customer (
    customer_id INT PRIMARY KEY,
    job_id VARCHAR(20) NOT NULL,
    address_id VARCHAR(20) NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    gender VARCHAR(6) NOT NULL,
    DOB VARCHAR(10) NOT NULL,
    deceased_indicator VARCHAR(1) NOT NULL,
    owns_car VARCHAR(3) NOT null
);

CREATE TABLE IF NOT EXISTS job (
	job_id VARCHAR(20) PRIMARY KEY,
	job_title TEXT,
    job_industry_category TEXT,
    wealth_segment text
);

CREATE TABLE IF NOT EXISTS address (
	address_id VARCHAR(20) PRIMARY KEY,
	address TEXT NOT NULL,
	postcode INT NOT NULL,
	state TEXT,
	country TEXT NOT NULL,
	property_valuation INT
);