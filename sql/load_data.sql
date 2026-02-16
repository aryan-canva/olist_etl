
\copy orders FROM 'path/to/olist_orders_dataset.csv' CSV HEADER;

\copy payments FROM 'path/to/olist_order_payments_dataset.csv' CSV HEADER;

\copy order_items FROM 'path/to/olist_order_items_dataset.csv' CSV HEADER;