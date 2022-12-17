{{ config(materialized='view') }}

select oip.customer_unique_id, order_id, order_purchase_timestamp, product_category_name
from (select 
        o.customer_unique_id,
        o.order_id, 
        p.product_category_name , 
        o.order_purchase_timestamp
      from {{ ref('orders')}} o
      left join {{ ref('items')}} i 
      on o.order_id = i.order_id
      left join {{ ref('products')}} p 
      on p.product_id = i.product_id) oip
where 
product_category_name is not null 
group by 1, 2, 3,4


