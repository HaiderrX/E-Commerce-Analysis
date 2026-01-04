USE OilyDB;

-- Staging Tables:

SELECT 
	customer_id,
	customer_unique_id,
	customer_zip_code_prefix,
	customer_city,
	customer_state
INTO stg_customers 
FROM raw_customers;

SELECT
	order_id,
	customer_id,
		order_status,
	order_purchase_timestamp,
	order_approved_at,
	order_delivered_carrier_date,
	order_delivered_customer_date,
	order_estimated_delivery_date
INTO stg_orders
FROM raw_orders;

SELECT
	order_id,
	order_item_id,
	product_id,
	seller_id,
	shipping_limit_date,
	price,
	freight_value
INTO stg_order_items
FROM raw_order_items;

SELECT
	order_id,
	payment_sequential,
	payment_type,
	payment_installments,
	payment_value
INTO stg_order_payments
FROM raw_order_payments;

-- Verifications:
SELECT TOP 10 * FROM stg_customers;
SELECT TOP 10 * FROM stg_orders;
SELECT TOP 10 * FROM stg_order_items;
SELECT TOP 10 * FROM stg_order_payments;

-- Cleaning Data:
SELECT
    CAST(customer_id AS VARCHAR(50)) AS customer_id,
    CAST(customer_unique_id AS VARCHAR(50)) AS customer_unique_id,
    CAST(customer_zip_code_prefix AS CHAR(5)) AS customer_zip_code_prefix,
    CAST(customer_city AS VARCHAR(100)) AS customer_city,
    CAST(customer_state AS CHAR(2)) AS customer_state
INTO dim_customers
FROM stg_customers;

SELECT * FROM stg_orders;
