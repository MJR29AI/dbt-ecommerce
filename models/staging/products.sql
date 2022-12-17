{{ config(materialized='view') }}
select 
    cast(product_id as STRING) as product_id , 
    cast(product_category_name as STRING) as product_category_name , 
    cast(product_name_lenght as INTEGER) as product_name_lenght , 
    cast(product_description_lenght as INTEGER) as product_description_lenght , 
    cast(product_photos_qty as INTEGER) as product_photos_qty , 
    cast(product_weight_g as INTEGER) as product_weight_g , 
    cast(product_length_cm as INTEGER) as product_length_cm , 
    cast(product_height_cm as INTEGER) as product_height_cm , 
    cast(product_width_cm as INTEGER) as product_width_cm 
from {{source('staging', 'olist_products_dataset')}}