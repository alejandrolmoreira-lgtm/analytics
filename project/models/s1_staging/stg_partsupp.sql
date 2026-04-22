with source as (
    select *
    from {{ source('tpch', 'partsupp') }}
)

, final as (
    select
        ps_partkey as part_key
        , ps_suppkey as supp_key
        , ps_availqty as part_supp_avail_qty
        , ps_supplycost as part_supp_supply_cost
        , ps_comment as part_supp_comment
    from source
)

select * from final