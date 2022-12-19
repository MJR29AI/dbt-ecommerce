{{ config(materialized='view') }}

select * , 
row_number() OVER(partition by  customer_unique_id, product_category_name order by order_purchase_timestamp ) as purchase_to 
from {{ref('category_rename')}}