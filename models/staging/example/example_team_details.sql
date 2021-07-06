with teams as (
    select * from {{ ref('teams') }}
),

final as (
    select * from teams
)

select * from final