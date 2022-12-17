{{ config(materialized='table') }}

select 
  DATE(DATETIME(order_purchase_timestamp)) AS date , 
  count(order_id) as total_order 
from {{ ref('orders')}} 
group by 1 
order by 1
