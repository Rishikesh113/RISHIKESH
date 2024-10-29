{{ config(materialized='view') }}

with rishi as (
    select 
        *,
        5000 as amount -- set the amount to 5000 for all records
    from {{ source('datafeed_shared_schema', 'payments')}}
)

select * from rishi

 