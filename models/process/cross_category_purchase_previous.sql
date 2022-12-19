{{ config(materialized='view') }}

select category_2, 
count(*) as total_order_from_previous
from {{ ref('cross_category_merge')}}
group by 1