-- Rule: Check Null Customer Name
-- Purpose: Ensure every customer has a name.

SELECT
    COUNT(*) AS null_customer_name_count
FROM customers
WHERE customer_name IS NULL;