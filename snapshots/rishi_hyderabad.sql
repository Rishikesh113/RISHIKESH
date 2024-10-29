{% snapshot rishi_hyderabad %}
{{ 
    config(Target_schema ='snapshots',
    strategy='timestamp',
unique_key='id',
updated_at='updated_at'
)
}}

select * from {{source('datafeed_shared_schema','RISHI_HYD')}}

{% endsnapshot %}     