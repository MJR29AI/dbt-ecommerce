{{ config(materialized='table') }}

select 
  customer_unique_id,
  EXTRACT(YEAR FROM DATETIME(order_purchase_timestamp)) AS YEAR ,
  EXTRACT(MONTH  FROM DATETIME(order_purchase_timestamp)) AS MONTH , 
  count(order_id) as total_order
from {{ ref('orders_customer')}}
group by 1, 2 ,3
having count(order_id) >= 1
order by  1, 2, 3 
