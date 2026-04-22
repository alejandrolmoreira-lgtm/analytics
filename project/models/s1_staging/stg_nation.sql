with source as (
    select *
    from {{ source('tpch', 'nation') }}
)

, final as (
    select
        n_nationkey as nation_key
        , n_regionkey as region_key
        , n_name as nation_name
        , n_comment as nation_comment
    from source
)

select * from final