-- Remove null values
SELECT *
FROM sales
WHERE customer_id IS NOT NULL;

-- Total sales by customer
SELECT customer_id, SUM(amount) as total_sales
FROM sales
GROUP BY customer_id;

-- Top 5 customers
SELECT customer_id, SUM(amount) as total_sales
FROM sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;
