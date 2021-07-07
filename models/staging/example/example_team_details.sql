with teams as (
    select * from {{ ref('teams') }}
--    union all
--    select
--        'Bulls' as name,
--        '' as city,
--        '' as state
),



final as (
    select
        teams.name,
        teams.city,
        teams.state,
        teams.name = '{{ var("current_champion") }}' as is_champion

    from teams
)

select *, '{{ invocation_id }}' as invocation_id from final