-- Rule: Check Null Customer Name
-- Purpose: Ensure active customers have a name.

SELECT
    COUNT(*) AS null_customer_name_count
FROM customers
WHERE customer_name IS NULL
  AND is_active = 1;