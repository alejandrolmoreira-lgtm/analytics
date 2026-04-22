
  
    



create or replace transient  table analytics.analytics_prod.stg_nation
    
    
    
    as (with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.nation
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
    )
;




  