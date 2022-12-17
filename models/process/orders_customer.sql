{{ config(materialized='view') }}


select 
    orders.*,
    EXTRACT(YEAR FROM DATETIME(order_purchase_timestamp)) AS YEAR ,
    EXTRACT(WEEK  FROM DATETIME(order_purchase_timestamp)) AS WEEK ,  
    customers.customer_unique_id 
from {{ ref('orders') }} orders 
left join {{ ref('customers') }} customers 
on orders.customer_id = customers.customer_id