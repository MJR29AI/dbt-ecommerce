{{ config(materialized='view') }}

select * 
from (select * , (purchase_2 - purchase_1) as diff 
        from 
            (select 
                a.customer_unique_id as id_1,
                a.order_purchase_timestamp as date_1,
                a.product_category_name as category_1,
                a.purchase_to as purchase_1,
                b.customer_unique_id as id_2,
                b.order_purchase_timestamp as date_2,
                b.product_category_name as category_2,
                b.purchase_to as purchase_2
                from {{ ref('cross_category_purchase_to')}} a
                left join {{ ref('cross_category_purchase_second')}} b
                on a.customer_unique_id = b.customer_unique_id ))
where diff =1 and category_1 != category_2