{{ config(materialized='table') }}

with rishi as
 (
    select id,user_id,order_date from {{source('datafeed_shared_schema','orders')}}
  )

select * from rishi 