{{ config(materialized='table') }}

select AVG(a.total) from (select 
  customer_unique_id,
  count(order_id) as total
from {{ ref('orders_customer')}}
group by 1 
order by 2 desc ) as a 