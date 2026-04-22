
  
    



create or replace transient  table analytics.analytics_prod.stg_lineitem
    
    
    
    as (with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.lineitem
)

, final as (
    select
        l_receiptdate as line_receipt_date
        , l_shipdate as line_ship_date
        , l_linenumber as line_number
        , l_linestatus as line_status
        , l_orderkey as order_key
        , l_partkey as part_key
        , l_discount as line_discount
        , l_extendedprice as line_extended_price
        , l_quantity as line_quantity
        , l_returnflag as line_return_flag
        , l_shipmode as line_ship_mode
        , l_suppkey as supp_key
        , l_tax as line_tax
    from source
)

select * from final
    )
;




  