with source as (
    select *
    from {{ source('tpch', 'nation') }}
)

, final as (
    select
        n_nationkey as nation_key
        , n_regionkey as region_key
        , n_name as n_name
        , n_comment as n_comment
    from source
)

select * from final