with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.lineitem
)

, final as (
    select
        l_receiptdate as l_receipt_date
        , l_shipdate as l_ship_date
        , l_linenumber as l_line_number
        , l_linestatus as l_line_status
        , l_orderkey as order_key
        , l_partkey as part_key
        , l_discount as l_discount
        , l_extendedprice as l_extended_price
        , l_quantity as l_quantity
        , l_returnflag as l_return_flag
        , l_shipmode as l_ship_mode
        , l_suppkey as supp_key
        , l_tax as l_tax
    from source
)

select * from final