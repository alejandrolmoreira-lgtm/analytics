
  
    



create or replace transient  table analytics.analytics_prod.stg_region
    
    
    
    as (with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.region
)

, final as (
    select
        r_regionkey as region_key
        , r_name as r_name
        , r_comment as r_comment
    from source
)

select * from final
    )
;




  