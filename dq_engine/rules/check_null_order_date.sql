-- Rule: Check Null Order Date
-- Purpose: Ensure every order has an order date.

SELECT
    COUNT(*) AS null_order_date_count
FROM orders
WHERE order_date IS NULL;