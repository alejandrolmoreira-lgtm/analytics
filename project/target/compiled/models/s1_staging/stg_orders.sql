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
        , o_shippriority as ship_priority
        , o_clerk as o_clerk
        , o_custkey as cust_key
        , o_totalprice as total_price
        , o_comment as o_comment
    from source
)

select * from final