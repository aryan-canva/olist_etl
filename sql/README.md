# End-to-End ETL & Dimensional Modeling (Olist Dataset)

## Motivation
Built to deeply understand dimensional modeling, grain definition,
and business-driven metric design instead of just writing SQL.

## Dataset
Brazilian E-Commerce Public Dataset (Olist)
Download the Olist dataset from Kaggle:
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

## Business Questions
- What is daily revenue?
- Which products generate the most revenue?
- How does revenue differ by payment method?

## Architecture
Raw Layer → Fact Layer → Analytics Layer

## Fact Tables

### fact_payments
Grain: One row = one payment transaction  
Used for: Daily revenue, revenue by payment type  

### fact_order_items
Grain: One row = one product sold in one order  
Used for: Product-level revenue  

## Key Learning
- Grain must be defined before aggregation
- Cash revenue ≠ item price revenue
- Ingestion duplication can inflate metrics
- Business assumptions must be documented


