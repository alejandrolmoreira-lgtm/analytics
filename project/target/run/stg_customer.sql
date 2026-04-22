
  
    



create or replace transient  table analytics.analytics_prod.stg_customer
    
    
    
    as (with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.customer
)

, final as (
    select
        c_custkey as cust_key
        , c_name as cust_name
        , c_address as cust_address
        , c_nationkey as nation_key
        , c_phone as cust_phone
        , c_acctbal as cust_account_balance
        , c_mktsegment as cust_mktsegment
        , c_comment as cust_comment
    from source
)

select * from final
    )
;




  