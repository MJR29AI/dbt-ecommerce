{{ config(materialized='table') }}

select 
  customer_unique_id, 
  DATE(DATETIME(order_purchase_timestamp)) AS date ,
  count(order_id) as total_order
from {{ ref('orders_customer')}}
group by 1, 2 
having count(order_id) >= 1
order by 3, 2, 1 desc
