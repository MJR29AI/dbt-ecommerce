{{ config(materialized='table') }}

select 
  EXTRACT(YEAR FROM DATETIME(order_purchase_timestamp)) AS YEAR ,
  EXTRACT(WEEK  FROM DATETIME(order_purchase_timestamp)) AS WEEK , 
  count(order_id) as total_order
from {{ ref('orders')}} 
group by 1,2 
order by 1, 2 asc

