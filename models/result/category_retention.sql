{{ config(materialized='table') }}


select product_category_name,
       SUM(CASE WHEN purchase_to = 1 THEN 1 ELSE 0 END) AS purchase_1,
       SUM(CASE WHEN purchase_to = 2 THEN 1 ELSE 0 END) AS purchase_2,
       SUM(CASE WHEN purchase_to = 3 THEN 1 ELSE 0 END) AS purchase_3,
       SUM(CASE WHEN purchase_to = 4 THEN 1 ELSE 0 END) AS purchase_4,
       SUM(CASE WHEN purchase_to = 5 THEN 1 ELSE 0 END) AS purchase_5,
       SUM(CASE WHEN purchase_to = 6 THEN 1 ELSE 0 END) AS purchase_6,
       SUM(CASE WHEN purchase_to = 7 THEN 1 ELSE 0 END) AS purchase_7,
       SUM(CASE WHEN purchase_to = 8 THEN 1 ELSE 0 END) AS purchase_8,
       SUM(CASE WHEN purchase_to = 9 THEN 1 ELSE 0 END) AS purchase_9
       from   `dbt_demo_bigquery.category_to`
        group by product_category_name
     order by product_category_name;