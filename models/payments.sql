{{ config(materialized='table') }}

with rishi as 
(
    select * from {{source('datafeed_shared_schema','payments')}}
)

select * from rishi 