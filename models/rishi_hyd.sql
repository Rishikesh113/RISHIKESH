{{config (materialized='table') }}

with rishi as (
    select * from {{source('datafeed_shared_schema','RISHI_HYD')}}
)

select * from rishi 