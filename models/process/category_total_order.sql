{{ config(materialized='view') }}

select 
    product_category_name, 
    count(*) as total_order
from {{ ref('category_rename')}}
group by 1