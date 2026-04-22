with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.part
)

, final as (
    select
        p_partkey as part_key
        , p_size as part_size
        , p_type as part_type
        , p_mfgr as part_mfgr
        , p_name as part_name
        , p_container as part_container
        , p_retailprice as part_retail_price
        , p_comment as part_comment
    from source
)

select * from final