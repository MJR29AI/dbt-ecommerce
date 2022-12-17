{{ config(materialized='table') }}

select 
  EXTRACT(YEAR FROM DATETIME(order_purchase_timestamp)) AS YEAR ,
  EXTRACT(MONTH  FROM DATETIME(order_purchase_timestamp)) AS MONTH , 
  count(order_id) as total_order
from {{ ref('orders')}} 
group by 1,2 
order by 1, 2 asc