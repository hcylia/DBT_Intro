{{ config(materialized='view', schema='staging') }}

with source_train as (
    select * from {{ source('sample_source_postgres', 'train') }}
),

final as (
    select * from source_train
)

select * from final