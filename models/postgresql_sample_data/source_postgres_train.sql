with source_train as (
    select * from {{ source('source_postgres', 'train') }}
),

final as (
    select * from source_train
)

select * from final