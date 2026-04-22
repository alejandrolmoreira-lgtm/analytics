
  
    



create or replace transient  table analytics.analytics_prod.stg_partsupp
    
    
    
    as (with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.partsupp
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
    )
;




  