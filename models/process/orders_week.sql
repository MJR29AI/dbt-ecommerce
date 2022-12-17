{{ config(materialized='view') }}

SELECT
    customer_unique_id,
    week_day AS week
    FROM {{ ref('orders_week_day')}}
    GROUP BY customer_unique_id,week_day