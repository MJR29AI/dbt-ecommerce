{{ config(materialized='view') }}

SELECT
    customer_unique_id,
    min(week_day) AS first_week
    FROM {{ ref('orders_week_day')}}
    GROUP BY customer_unique_id