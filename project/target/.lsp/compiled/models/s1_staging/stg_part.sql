with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.part
)

, final as (
    select
        p_partkey as part_key
        , p_size as p_size
        , p_type as p_type
        , p_mfgr as p_mfgr
        , p_name as p_name
        , p_container as p_container
        , p_retailprice as p_retail_price
        , p_comment as p_comment
    from source
)

select * from final