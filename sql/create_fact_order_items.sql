
DROP TABLE IF EXISTS fact_order_items;

CREATE TABLE fact_order_items AS
SELECT
    oi.order_id,
    oi.order_item_id,
    oi.product_id,
    oi.price,
    oi.freight_value,
    o.order_status,
    o.order_approved_at::date AS order_date
FROM order_items oi
JOIN orders o
    ON oi.order_id = o.order_id;