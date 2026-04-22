-- created_at: 2026-04-22T15:33:01.537734+00:00
-- finished_at: 2026-04-22T15:33:01.651938200+00:00
-- elapsed: 114ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c3e1c5-0001-b542-0002-5ab600021082
-- desc: execute adapter call
show terse schemas in database analytics
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:01.973054200+00:00
-- finished_at: 2026-04-22T15:33:02.121093+00:00
-- elapsed: 148ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_orders
-- query_id: 01c3e1c5-0001-b564-0002-5ab600029066
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:33:02.940693500+00:00
-- finished_at: 2026-04-22T15:33:03.065455800+00:00
-- elapsed: 124ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_part
-- query_id: 01c3e1c5-0001-b540-0002-5ab60002598e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:33:03.270391200+00:00
-- finished_at: 2026-04-22T15:33:03.407843800+00:00
-- elapsed: 137ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_customer
-- query_id: 01c3e1c5-0001-b562-0002-5ab60002805e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:33:02.123505900+00:00
-- finished_at: 2026-04-22T15:33:03.544594100+00:00
-- elapsed: 1.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_orders
-- query_id: 01c3e1c5-0001-b564-0002-5ab60002906a
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_orders
    
    
    
    as (with source as (
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
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_orders", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:03.067794100+00:00
-- finished_at: 2026-04-22T15:33:04.296168200+00:00
-- elapsed: 1.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_part
-- query_id: 01c3e1c5-0001-b563-0002-5ab60002703e
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_part
    
    
    
    as (with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.part
)

, final as (
    select
        p_partkey as part_key
        , p_size as part_size
        , p_type as part_type
        , p_mfgr as part_mfgr
        , p_name as part_name
        , p_container as part_container
        , p_retailprice as part_retail_price
        , p_comment as part_comment
    from source
)

select * from final
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_part", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:03.555253900+00:00
-- finished_at: 2026-04-22T15:33:04.382626100+00:00
-- elapsed: 827ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.dim_date
-- query_id: 01c3e1c5-0001-b540-0002-5ab600025992
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.dim_date
    
    
    
    as (select

    order_date as date

    --basics
    , extract(year from order_date) as year
    , extract(month from order_date) as month
    , extract(day from order_date) as day

    --week
    , extract(week from order_date) as week
    , extract(dayofweek from order_date) as day_of_week

    --others
    , date_trunc('month', order_date) as month_start
    , date_trunc('year', order_date) as year_start

from analytics.analytics_prod.stg_orders
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.dim_date", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:04.278787500+00:00
-- finished_at: 2026-04-22T15:33:04.414193400+00:00
-- elapsed: 135ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_nation
-- query_id: 01c3e1c5-0001-b541-0002-5ab60002e066
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:33:04.303224400+00:00
-- finished_at: 2026-04-22T15:33:05.082491700+00:00
-- elapsed: 779ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.dim_part
-- query_id: 01c3e1c5-0001-b554-0002-5ab600026032
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.dim_part
    
    
    
    as (select

    --primary key
    part_key as part_key

    --attributes
    , part_name as part_name
    , part_mfgr as manufacturer
    , part_size as part_size
    , part_type  as part_type
    , part_container part_container

    --reference price
    , part_retail_price as retail_price

from analytics.analytics_prod.stg_part
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.dim_part", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:04.416416200+00:00
-- finished_at: 2026-04-22T15:33:05.146008800+00:00
-- elapsed: 729ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_nation
-- query_id: 01c3e1c5-0001-b55b-0002-5ab60002c06a
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_nation
    
    
    
    as (with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.nation
)

, final as (
    select
        n_nationkey as nation_key
        , n_regionkey as region_key
        , n_name as nation_name
        , n_comment as nation_comment
    from source
)

select * from final
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_nation", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:03.411178600+00:00
-- finished_at: 2026-04-22T15:33:05.312847800+00:00
-- elapsed: 1.9s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_customer
-- query_id: 01c3e1c5-0001-b545-0002-5ab600022056
-- desc: execute adapter call
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

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_customer", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:05.219909200+00:00
-- finished_at: 2026-04-22T15:33:05.362401900+00:00
-- elapsed: 142ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_partsupp
-- query_id: 01c3e1c5-0001-b541-0002-5ab60002e06a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:33:06.146736400+00:00
-- finished_at: 2026-04-22T15:33:06.291187200+00:00
-- elapsed: 144ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_region
-- query_id: 01c3e1c5-0001-b562-0002-5ab600028062
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:33:05.365211+00:00
-- finished_at: 2026-04-22T15:33:07.054579800+00:00
-- elapsed: 1.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_partsupp
-- query_id: 01c3e1c5-0001-b55b-0002-5ab60002c06e
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_partsupp
    
    
    
    as (with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.partsupp
)

, final as (
    select
        ps_partkey as part_key
        , ps_suppkey as supp_key
        , ps_availqty as part_supp_avail_qty
        , ps_supplycost as part_supp_supply_cost
        , ps_comment as part_supp_comment
    from source
)

select * from final
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_partsupp", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:06.293955400+00:00
-- finished_at: 2026-04-22T15:33:07.130822200+00:00
-- elapsed: 836ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_region
-- query_id: 01c3e1c5-0001-b545-0002-5ab60002205a
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_region
    
    
    
    as (with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.region
)

, final as (
    select
        r_regionkey as region_key
        , r_name as region_name
        , r_comment as region_comment
    from source
)

select * from final
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_region", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:07.073978200+00:00
-- finished_at: 2026-04-22T15:33:07.233025900+00:00
-- elapsed: 159ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_lineitem
-- query_id: 01c3e1c5-0001-b55b-0002-5ab60002c072
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:33:07.144046100+00:00
-- finished_at: 2026-04-22T15:33:07.900243200+00:00
-- elapsed: 756ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.dim_location
-- query_id: 01c3e1c5-0001-b541-0002-5ab60002e06e
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.dim_location
    
    
    
    as (with nation as (

    select *
    from analytics.analytics_prod.stg_nation

)

, region as (

    select *
    from analytics.analytics_prod.stg_region

)

, final as (

    select

        --primary key
        n.nation_key

        --attributes
        , n.nation_name as nation
        , r.region_name as region

    from nation n

    left join region r
        using(region_key)

)

select * from final
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.dim_location", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:07.144046200+00:00
-- finished_at: 2026-04-22T15:33:08.095538800+00:00
-- elapsed: 951ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.dim_customer
-- query_id: 01c3e1c5-0001-b562-0002-5ab600028066
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.dim_customer
    
    
    
    as (with customer as (

    select *
    from analytics.analytics_prod.stg_customer

)

, nation as (

    select *
    from analytics.analytics_prod.stg_nation

)

, region as (

    select *
    from analytics.analytics_prod.stg_region

)

, final as (

    select
        --primary key
        c.cust_key as customer_key

        --customer atributes
        , c.cust_name as customer_name
        , c.cust_address as customer_address
        , c.cust_phone as customer_phone
        , c.cust_account_balance as customer_account_balance
        , c.cust_mktsegment as market_segment 

        --geography
        , n.nation_name as nation
        , r.region_name as region

    from customer c
    
    left join nation n
        using(nation_key)
    
    left join region r
        using(region_key)

)

select * from final
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.dim_customer", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:08.011541+00:00
-- finished_at: 2026-04-22T15:33:08.137587600+00:00
-- elapsed: 126ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_supplier
-- query_id: 01c3e1c5-0001-b55b-0002-5ab60002c076
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:33:07.062842500+00:00
-- finished_at: 2026-04-22T15:33:08.239671800+00:00
-- elapsed: 1.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.dim_part_supplier
-- query_id: 01c3e1c5-0001-b564-0002-5ab60002906e
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.dim_part_supplier
    
    
    
    as (select
    part_key
    , supp_key
    , part_supp_supply_cost as supply_cost
from analytics.analytics_prod.stg_partsupp
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.dim_part_supplier", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:08.141212900+00:00
-- finished_at: 2026-04-22T15:33:09.010597100+00:00
-- elapsed: 869ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_supplier
-- query_id: 01c3e1c5-0001-b563-0002-5ab600027046
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_supplier
    
    
    
    as (with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.supplier
)

, final as (
    select
        s_suppkey as supp_key
        , s_nationkey as nation_key
        , s_acctbal as supp_acctbal
        , s_name as supp_name
        , s_address as supp_address
        , s_phone as supp_phone
        , s_comment as supp_comment
    from source
)

select * from final
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_supplier", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:09.018070900+00:00
-- finished_at: 2026-04-22T15:33:09.920671400+00:00
-- elapsed: 902ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.dim_supplier
-- query_id: 01c3e1c5-0001-b555-0002-5ab60002d04a
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.dim_supplier
    
    
    
    as (with supplier as (

    select *
    from analytics.analytics_prod.stg_supplier

)

, nation as (

    select *
    from analytics.analytics_prod.stg_nation

)

, region as (

    select *
    from analytics.analytics_prod.stg_region
    
)

, final as (
    select

        --primary key
        s.supp_key

        --attributes
        , s.supp_name as supplier_name
        , s.supp_address as supplier_address
        , s.supp_phone as supplier_phone
        , s.supp_acctbal as supplier_account_balance

        --geography
        , n.nation_name as nation
        , r.region_name as region

    from supplier s

    left join nation n
        using(nation_key)

    left join region r
        using(region_key)

)

select * from final
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.dim_supplier", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:07.236198600+00:00
-- finished_at: 2026-04-22T15:33:10.253019100+00:00
-- elapsed: 3.0s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_lineitem
-- query_id: 01c3e1c5-0001-b563-0002-5ab600027042
-- desc: execute adapter call
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

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_lineitem", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:10.270185300+00:00
-- finished_at: 2026-04-22T15:33:10.908094+00:00
-- elapsed: 637ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.int_lineitem_enriched
-- query_id: 01c3e1c5-0001-b55b-0002-5ab60002c07a
-- desc: execute adapter call
create or replace   view analytics.analytics_prod.int_lineitem_enriched
  
  
  
  
  as (
    with lineitem as (

    select *
    from analytics.analytics_prod.stg_lineitem

)

, orders as (

    select *
    from analytics.analytics_prod.stg_orders

)

, customer as (

    select *
    from analytics.analytics_prod.stg_customer

)

, nation as (

    select *
    from analytics.analytics_prod.stg_nation

)

, region as (

    select *
    from analytics.analytics_prod.stg_region

)

, supplier as (

    select *
    from analytics.analytics_prod.stg_supplier

)

, part as (

    select *
    from analytics.analytics_prod.stg_part

)

, part_supplier as (

    select *
    from analytics.analytics_prod.stg_partsupp

)


, final as (
    select
        --grain keys
        concat(l.order_key, '-', l.line_number) as lineitem_id
        , o.order_key as order_key
        , l.line_number as line_number

        --foreign keys
        , l.part_key as part_key
        , l.supp_key as supp_key
        , o.cust_key as cust_key

        --order info
        , o.order_date as order_date

        --geography
        , n.nation_name as nation
        , r.region_name as region

        --metrics
        , l.line_quantity as quantity
        , p.part_retail_price as retail_price
        , l.line_extended_price as gross_revenue
        , l.line_discount as discount
        , l.line_tax as tax
        , ps.part_supp_supply_cost as supply_cost

        --derived metrics
        , (p.part_retail_price * l.line_quantity) - l.line_extended_price as price_variance
        , l.line_extended_price * (1 - l.line_discount) as net_revenue
        , l.line_extended_price * l.line_discount as discount_amount
        , p.part_retail_price * l.line_quantity as expected_revenue
        , l.line_quantity * ps.part_supp_supply_cost as total_cost
        , (l.line_extended_price * (1 - l.line_discount)) - (l.line_quantity * ps.part_supp_supply_cost) as profit


    from lineitem l

    left join orders o
        using (order_key)

    left join customer c
        using (cust_key)

    left join nation n
        using(nation_key)

    left join region r
        using(region_key)

    left join supplier s
        using(supp_key)

    left join part p
        using(part_key)

    left join part_supplier ps
        using(part_key, supp_key)
)

select * from final
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.int_lineitem_enriched", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:33:10.919467300+00:00
-- finished_at: 2026-04-22T15:33:15.763394900+00:00
-- elapsed: 4.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.fact_lineitem
-- query_id: 01c3e1c5-0001-b562-0002-5ab60002806a
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.fact_lineitem
    
    
    
    as (select *
from analytics.analytics_prod.int_lineitem_enriched
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.fact_lineitem", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
