{{ config(materialized='view') }}

select *
from {{ ref('cross_category_purchase_to')}}
where purchase_to > 1