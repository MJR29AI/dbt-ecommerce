{{ config(materialized='table') }}

select first_week,
     SUM(CASE WHEN week_number = 0 THEN 1 ELSE 0 END) AS week_0,
       SUM(CASE WHEN week_number = 1 THEN 1 ELSE 0 END) AS week_1,
       SUM(CASE WHEN week_number = 2 THEN 1 ELSE 0 END) AS week_2,
       SUM(CASE WHEN week_number = 3 THEN 1 ELSE 0 END) AS week_3,
       SUM(CASE WHEN week_number = 4 THEN 1 ELSE 0 END) AS week_4,
       SUM(CASE WHEN week_number = 5 THEN 1 ELSE 0 END) AS week_5,
       SUM(CASE WHEN week_number = 6 THEN 1 ELSE 0 END) AS week_6,
       SUM(CASE WHEN week_number = 7 THEN 1 ELSE 0 END) AS week_7,
       SUM(CASE WHEN week_number = 8 THEN 1 ELSE 0 END) AS week_8,
       SUM(CASE WHEN week_number = 9 THEN 1 ELSE 0 END) AS week_9
    
       from   {{ ref('orders_merge')}}
         as with_week_number
    
         group by first_week
     order by first_week