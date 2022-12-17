{{ config(materialized='view') }}


select 
  * EXCEPT(YEAR, WEEK), 
  CAST(CONCAT(YEAR , WEEK) AS INT64) week_day 
FROM
    (select 
      * EXCEPT(YEAR, WEEK),
      EXTRACT(YEAR FROM DATETIME(order_purchase_timestamp)) AS YEAR ,
      LPAD(CAST( EXTRACT(WEEK  FROM DATETIME(order_purchase_timestamp)) AS string), 2 , "0")  AS WEEK
    from {{ ref('orders_customer')}}

