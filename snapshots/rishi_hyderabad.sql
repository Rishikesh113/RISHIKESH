{ % snapshot rishi_hyderabad % }
{{ 
    config(startegy='Timestamp',
unique_key='id',
updated_at='updated_at'
)
}}

select * from {{source('datafeed_shared_schema','Rishi_hyd')}}

{ % endsnapshot %}