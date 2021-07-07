with teams as (
    select * from {{ ref('teams') }}
),



final as (
    select
        teams.name,
        teams.city,
        teams.state,
        teams.name = '{{ var("current_champion") }}' as is_champion

    from teams
)

select * from final