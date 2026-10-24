-- Rule: Check Duplicate Customer Email
-- Purpose: Ensure customer email addresses are unique.
SELECT
    customer_email,
    COUNT(*) AS duplicate_count
FROM customers
GROUP BY customer_email
HAVING COUNT(*) > 1;