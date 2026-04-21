
  
    



create or replace transient  table analytics.analytics_prod.stg_customer
    
    
    
    as (with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.customer
)

, final as (
    select
        c_custkey as c_custkey
        , c_name as c_name
        , c_address as c_address
        , c_nationkey as c_nationkey
        , c_phone as c_phone
        , c_acctbal as c_acctbal
        , c_mktsegment as c_mktsegment
        , c_comment as c_comment
    from source
)

select * from final
    )
;




  