{{ config(materialized='table') }}

select 
    product_category_name,
    total_order,
    total_order_from_previous , 
    (b.total_order_from_previous / a.total_order) * 100 as percentage_order_category_diff_previous
    
from {{ ref('category_total_order')}} a
left join {{ ref('cross_category_purchase_previous')}} b
on a.product_category_name = b.category_2
