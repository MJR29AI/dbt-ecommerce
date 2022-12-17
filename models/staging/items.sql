{{ config(materialized='view') }}

select 
    cast(order_id as STRING) as order_id  			
    cast(order_item_id as INTEGER) as order_item_id  			
    cast(product_id as STRING) as product_id  			
    cast(seller_id as STRING) as seller_id  			
    cast(shipping_limit_date as TIMESTAMP) as shipping_limit_date  			
    cast(price as FLOAT) as price  			
    cast(freight_value as FLOAT) as freight_value  	
from {{source('staging', 'olist_order_items_dataset')}}