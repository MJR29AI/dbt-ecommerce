{{ config(materialized='view') }}

select 
    cast(customer_id as STRING) as customer_id, 
    cast(customer_unique_id as STRING) as customer_unique_id, 
    cast(customer_zip_code_prefix as INTEGER) as customer_zip_code_prefix, 
    cast(customer_city as STRING) as customer_city, 
    cast(customer_state as STRING) as customer_state

from {{source('staging', 'olist_customers_dataset')}}





