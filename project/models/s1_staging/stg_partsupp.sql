with source as (
    select *
    from {{ source('tpch', 'partsupp') }}
)

, final as (
    select
        ps_partkey as part_key
        , ps_suppkey as supp_key
        , ps_availqty as ps_avail_qty
        , ps_supplycost as ps_supply_cost
        , ps_comment as ps_comment
    from source
)

select * from final