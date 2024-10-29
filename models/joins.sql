{{ config(materialized='view') }}

with rishi as (
    select c.first_name,c.last_name,p.payment_method,p.amount from 
    {{source('datafeed_shared_schema','payments')}} p join  {{source('datafeed_shared_schema','customers_data')}} c
    on c.id=p.id  
)
select * from rishi 