{{ config(materialized='view') }}

select *
from
      (select * , 
      row_number() OVER(partition by  customer_unique_id order by order_purchase_timestamp ) as purchase_to 
      from {{ ref('category_rename')}} )