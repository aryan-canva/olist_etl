
DROP TABLE IF EXISTS fact_payments;

CREATE TABLE fact_payments AS
SELECT
    p.order_id,
    p.payment_sequential,
    o.order_approved_at::date AS payment_date,
    p.payment_value,
    p.payment_type,
    o.order_status
FROM payments p
JOIN orders o
    ON p.order_id = o.order_id
WHERE p.payment_value IS NOT NULL;