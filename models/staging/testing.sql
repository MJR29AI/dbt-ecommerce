{{ config(materialized='view') }}


select * from {{source('staging', 'olist_orders_dataset')}} limit 10

