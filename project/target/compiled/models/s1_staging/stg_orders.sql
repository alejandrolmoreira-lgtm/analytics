with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.orders
)

, final as (
    select
        o_orderkey as order_key
        , o_orderdate as order_date
        , o_orderstatus as order_status
        , o_orderpriority as order_priority
        , o_shippriority as order_ship_priority
        , o_clerk as order_clerk
        , o_custkey as cust_key
        , o_totalprice as order_total_price
        , o_comment as order_comment
    from source
)

select * from final