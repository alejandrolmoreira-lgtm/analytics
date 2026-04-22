with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.supplier
)

, final as (
    select
        s_suppkey as supp_key
        , s_nationkey as nation_key
        , s_acctbal as s_acctbal
        , s_name as s_name
        , s_address as s_address
        , s_phone as s_phone
        , s_comment as s_comment
    from source
)

select * from final