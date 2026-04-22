-- created_at: 2026-04-22T08:56:44.864055+00:00
-- finished_at: 2026-04-22T08:56:44.969674100+00:00
-- elapsed: 105ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c3e038-0001-b4ae-0002-5ab6000142f6
-- desc: execute adapter call
show terse schemas in database analytics
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T08:56:45.963634900+00:00
-- finished_at: 2026-04-22T08:56:46.160309200+00:00
-- elapsed: 196ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_nation
-- query_id: 01c3e038-0001-b500-0002-5ab60001d0be
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T08:56:46.910398600+00:00
-- finished_at: 2026-04-22T08:56:47.034277100+00:00
-- elapsed: 123ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_supplier
-- query_id: 01c3e038-0001-b501-0002-5ab60001c176
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T08:56:46.163310600+00:00
-- finished_at: 2026-04-22T08:56:47.109516700+00:00
-- elapsed: 946ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_nation
-- query_id: 01c3e038-0001-b501-0002-5ab60001c172
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
        , n_name as n_name
        , n_comment as n_comment
    from source
)

select * from final
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_nation", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T08:56:47.036621+00:00
-- finished_at: 2026-04-22T08:56:47.942387400+00:00
-- elapsed: 905ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_supplier
-- query_id: 01c3e038-0001-b46f-0000-00025ab69d35
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
        , s_acctbal as s_acctbal
        , s_name as s_name
        , s_address as s_address
        , s_phone as s_phone
        , s_comment as s_comment
    from source
)

select * from final
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_supplier", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T08:56:47.945466300+00:00
-- finished_at: 2026-04-22T08:56:48.063331800+00:00
-- elapsed: 117ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_customer
-- query_id: 01c3e038-0001-b518-0002-5ab60001e09e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T08:56:48.264197600+00:00
-- finished_at: 2026-04-22T08:56:48.387679300+00:00
-- elapsed: 123ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_region
-- query_id: 01c3e038-0001-b501-0002-5ab60001c17a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T08:56:48.572641400+00:00
-- finished_at: 2026-04-22T08:56:48.710347200+00:00
-- elapsed: 137ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_orders
-- query_id: 01c3e038-0001-b4ae-0002-5ab6000142fe
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T08:56:48.065488+00:00
-- finished_at: 2026-04-22T08:56:48.931532400+00:00
-- elapsed: 866ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_customer
-- query_id: 01c3e038-0001-b4ae-0002-5ab6000142fa
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
        , c_acctbal as cust_acctbal
        , c_mktsegment as cust_mktsegment
        , c_comment as cust_comment
    from source
)

select * from final
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_customer", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T08:56:48.390542+00:00
-- finished_at: 2026-04-22T08:56:48.955483300+00:00
-- elapsed: 564ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_region
-- query_id: 01c3e038-0001-b518-0002-5ab60001e0a2
-- desc: execute adapter call
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

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_region", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T08:56:49.513563400+00:00
-- finished_at: 2026-04-22T08:56:49.614211600+00:00
-- elapsed: 100ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_partsupp
-- query_id: 01c3e038-0001-b518-0002-5ab60001e0a6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T08:56:49.808864900+00:00
-- finished_at: 2026-04-22T08:56:49.899786200+00:00
-- elapsed: 90ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_lineitem
-- query_id: 01c3e038-0001-b518-0002-5ab60001e0aa
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T08:56:50.083515700+00:00
-- finished_at: 2026-04-22T08:56:50.224592300+00:00
-- elapsed: 141ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_part
-- query_id: 01c3e038-0001-b500-0002-5ab60001d0ca
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T08:56:48.712672500+00:00
-- finished_at: 2026-04-22T08:56:50.449996400+00:00
-- elapsed: 1.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_orders
-- query_id: 01c3e038-0001-b500-0002-5ab60001d0c2
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
        , o_shippriority as ship_priority
        , o_clerk as o_clerk
        , o_custkey as cust_key
        , o_totalprice as total_price
        , o_comment as o_comment
    from source
)

select * from final
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_orders", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T08:56:49.616483+00:00
-- finished_at: 2026-04-22T08:56:50.829590100+00:00
-- elapsed: 1.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_partsupp
-- query_id: 01c3e038-0001-b500-0002-5ab60001d0c6
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
        , ps_availqty as ps_avail_qty
        , ps_supplycost as ps_supply_cost
        , ps_comment as ps_comment
    from source
)

select * from final
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_partsupp", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T08:56:50.226757700+00:00
-- finished_at: 2026-04-22T08:56:51.310742700+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_part
-- query_id: 01c3e038-0001-b46f-0000-00025ab69d39
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_part
    
    
    
    as (with source as (
    select *
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.part
)

, final as (
    select
        p_partkey as part_key
        , p_size as p_size
        , p_type as p_type
        , p_mfgr as p_mfgr
        , p_name as p_name
        , p_container as p_container
        , p_retailprice as p_retail_price
        , p_comment as p_comment
    from source
)

select * from final
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_part", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T08:56:49.901980600+00:00
-- finished_at: 2026-04-22T08:56:52.715657100+00:00
-- elapsed: 2.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_lineitem
-- query_id: 01c3e038-0001-b4ae-0002-5ab600014302
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_lineitem
    
    
    
    as (with source as (
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
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_lineitem", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
