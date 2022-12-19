{{ config(materialized='view') }}

select a.* except(product_category_name), b.string_field_1 as product_category_name
from {{ ref('category_merge')}} a
left join {{source( 'staging' ,'product_category_name_translation')}} b
on b.string_field_0 = a.product_category_name

