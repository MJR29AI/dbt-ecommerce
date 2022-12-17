{{ config(materialized='view') }}

select 
  a.customer_unique_id,
  a.week,
  b.first_week as first_week,
  a.login_week - b.first_week as week_number
from   
        {{ ref('orders_week')}} a,
        {{ ref('orders_first_week')}} b
where a.customer_unique_id=b.customer_unique_id