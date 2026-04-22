with source as (
    select *
    from {{ source('tpch', 'supplier') }}
)

, final as (
    select
        s_suppkey as supp_key
        , s_nationkey as nation_key
        , s_acctbal as supp_acctbal
        , s_name as supp_name
        , s_address as supp_address
        , s_phone as supp_phone
        , s_comment as supp_comment
    from source
)

select * from final