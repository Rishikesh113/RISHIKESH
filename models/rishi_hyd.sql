{{config (materialized='table') }}

with rishi as (
    select * from {{source('datafeed_shared_schema','rishi_hyd')}}
)

select * from rishi 