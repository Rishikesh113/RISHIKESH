{{config (materialized='table') }}

with rishi as (
    select * from {{source('datafeed_shared_schema','customers_data')}}
)

select * from rishi 