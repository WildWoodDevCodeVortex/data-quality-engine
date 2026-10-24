-- Rule: Check Null Customer Name
-- Purpose: Count and calculate percentage
-- of active customers with missing names.

SELECT
    COUNT(*) AS null_customer_name_count,
    COUNT(*) * 100.0 /
        NULLIF(
            (SELECT COUNT(*)
             FROM customers
             WHERE is_active = 1),
            0
        ) AS null_customer_name_percentage
FROM customers
WHERE customer_name IS NULL
  AND is_active = 1;