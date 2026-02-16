-- Daily Revenue (Cash-Based)

SELECT
    payment_date,
    SUM(payment_value) AS daily_revenue
FROM fact_payments
WHERE order_status NOT IN ('canceled', 'unavailable')
GROUP BY payment_date
ORDER BY payment_date;


-- Revenue by Payment Type

SELECT
    payment_type,
    SUM(payment_value) AS total_revenue
FROM fact_payments
WHERE order_status NOT IN ('canceled', 'unavailable')
GROUP BY payment_type
ORDER BY total_revenue DESC;

-- Top Products by Revenue (Item Grain)

SELECT
    product_id,
    SUM(price) AS product_revenue
FROM fact_order_items
WHERE order_status NOT IN ('canceled', 'unavailable')
GROUP BY product_id
ORDER BY product_revenue DESC
LIMIT 10;

-- Compare Cash vs Item Revenue

SELECT
    (SELECT SUM(payment_value)
     FROM fact_payments
     WHERE order_status NOT IN ('canceled', 'unavailable')) AS cash_revenue,

    (SELECT SUM(price)
     FROM fact_order_items
     WHERE order_status NOT IN ('canceled', 'unavailable')) AS item_revenue;
