-- created_at: 2026-04-22T15:10:33.245564300+00:00
-- finished_at: 2026-04-22T15:10:33.369704100+00:00
-- elapsed: 124ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c3e1ae-0001-b55b-0002-5ab60002c022
-- desc: execute adapter call
show terse schemas in database analytics
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T15:10:34.314964300+00:00
-- finished_at: 2026-04-22T15:10:34.461969600+00:00
-- elapsed: 147ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_partsupp
-- query_id: 01c3e1ae-0001-b541-0002-5ab60002e012
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:10:35.254299+00:00
-- finished_at: 2026-04-22T15:10:35.434376700+00:00
-- elapsed: 180ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_region
-- query_id: 01c3e1ae-0001-b561-0002-5ab60002b01a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:10:34.464644600+00:00
-- finished_at: 2026-04-22T15:10:35.614306900+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_partsupp
-- query_id: 01c3e1ae-0001-b541-0002-5ab60002e016
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
-- created_at: 2026-04-22T15:10:35.519927600+00:00
-- finished_at: 2026-04-22T15:10:35.636838500+00:00
-- elapsed: 116ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_customer
-- query_id: 01c3e1ae-0001-b541-0002-5ab60002e01a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:10:35.437184700+00:00
-- finished_at: 2026-04-22T15:10:36.135369600+00:00
-- elapsed: 698ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_region
-- query_id: 01c3e1ae-0001-b55b-0002-5ab60002c026
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
-- created_at: 2026-04-22T15:10:35.640231600+00:00
-- finished_at: 2026-04-22T15:10:36.446045600+00:00
-- elapsed: 805ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_customer
-- query_id: 01c3e1ae-0001-b55b-0002-5ab60002c02a
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
-- created_at: 2026-04-22T15:10:36.444172400+00:00
-- finished_at: 2026-04-22T15:10:36.628143200+00:00
-- elapsed: 183ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_lineitem
-- query_id: 01c3e1ae-0001-b564-0002-5ab600029032
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:10:37.432527900+00:00
-- finished_at: 2026-04-22T15:10:37.584547600+00:00
-- elapsed: 152ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_orders
-- query_id: 01c3e1ae-0001-b555-0002-5ab60002d016
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:10:37.755774300+00:00
-- finished_at: 2026-04-22T15:10:37.897395300+00:00
-- elapsed: 141ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_nation
-- query_id: 01c3e1ae-0001-b55b-0002-5ab60002c02e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:10:37.900713100+00:00
-- finished_at: 2026-04-22T15:10:38.784592300+00:00
-- elapsed: 883ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_nation
-- query_id: 01c3e1ae-0001-b542-0002-5ab60002104e
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
-- created_at: 2026-04-22T15:10:38.744890700+00:00
-- finished_at: 2026-04-22T15:10:38.911573600+00:00
-- elapsed: 166ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_supplier
-- query_id: 01c3e1ae-0001-b545-0002-5ab60002203a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:10:37.586730500+00:00
-- finished_at: 2026-04-22T15:10:38.997513+00:00
-- elapsed: 1.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_orders
-- query_id: 01c3e1ae-0001-b542-0002-5ab60002104a
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
-- created_at: 2026-04-22T15:10:39.031083900+00:00
-- finished_at: 2026-04-22T15:10:39.183001800+00:00
-- elapsed: 151ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_part
-- query_id: 01c3e1ae-0001-b542-0002-5ab600021052
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T15:10:36.630578700+00:00
-- finished_at: 2026-04-22T15:10:39.434547500+00:00
-- elapsed: 2.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_lineitem
-- query_id: 01c3e1ae-0001-b562-0002-5ab600028032
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
-- created_at: 2026-04-22T15:10:38.797391600+00:00
-- finished_at: 2026-04-22T15:10:39.684322200+00:00
-- elapsed: 886ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.dim_customer
-- query_id: 01c3e1ae-0001-b554-0002-5ab600026016
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
-- created_at: 2026-04-22T15:10:38.914520800+00:00
-- finished_at: 2026-04-22T15:10:39.771280+00:00
-- elapsed: 856ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_supplier
-- query_id: 01c3e1ae-0001-b561-0002-5ab60002b01e
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
-- created_at: 2026-04-22T15:10:39.185209600+00:00
-- finished_at: 2026-04-22T15:10:40.308884500+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_part
-- query_id: 01c3e1ae-0001-b55b-0002-5ab60002c032
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
-- created_at: 2026-04-22T15:10:39.779976400+00:00
-- finished_at: 2026-04-22T15:10:40.580097800+00:00
-- elapsed: 800ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.dim_supplier
-- query_id: 01c3e1ae-0001-b555-0002-5ab60002d01a
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
-- created_at: 2026-04-22T15:10:40.327476600+00:00
-- finished_at: 2026-04-22T15:10:40.640061200+00:00
-- elapsed: 312ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.int_lineitem_enriched
-- query_id: 01c3e1ae-0001-b555-0002-5ab60002d01e
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
-- created_at: 2026-04-22T15:10:40.317962800+00:00
-- finished_at: 2026-04-22T15:10:41.293323200+00:00
-- elapsed: 975ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.dim_part
-- query_id: 01c3e1ae-0001-b545-0002-5ab60002203e
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
-- created_at: 2026-04-22T15:10:40.649147200+00:00
-- finished_at: 2026-04-22T15:10:45.843953700+00:00
-- elapsed: 5.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.fact_lineitem
-- query_id: 01c3e1ae-0001-b541-0002-5ab60002e01e
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.fact_lineitem
    
    
    
    as (select *
from analytics.analytics_prod.int_lineitem_enriched
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.fact_lineitem", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
