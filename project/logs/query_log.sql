-- created_at: 2026-04-21T10:48:24.654713+00:00
-- finished_at: 2026-04-21T10:48:24.798767100+00:00
-- elapsed: 144ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c3db08-0001-b47f-0000-00025ab6ff8d
-- desc: execute adapter call
show terse schemas in database analytics
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T10:48:25.099113100+00:00
-- finished_at: 2026-04-21T10:48:25.267005500+00:00
-- elapsed: 167ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_partsupp
-- query_id: 01c3db08-0001-b417-0002-5ab60001003e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T10:48:26.165282100+00:00
-- finished_at: 2026-04-21T10:48:26.320241600+00:00
-- elapsed: 154ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_supplier
-- query_id: 01c3db08-0001-b47f-0000-00025ab6ff91
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T10:48:25.269822700+00:00
-- finished_at: 2026-04-21T10:48:27.107475100+00:00
-- elapsed: 1.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_partsupp
-- query_id: 01c3db08-0001-b417-0002-5ab600010042
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_partsupp
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.PARTSUPP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_partsupp", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T10:48:26.323168200+00:00
-- finished_at: 2026-04-21T10:48:27.115137900+00:00
-- elapsed: 791ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_supplier
-- query_id: 01c3db08-0001-b417-0002-5ab600010046
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_supplier
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.supplier
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_supplier", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T10:48:33.328868400+00:00
-- finished_at: 2026-04-21T10:48:33.451500400+00:00
-- elapsed: 122ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_region
-- query_id: 01c3db08-0001-b47f-0000-00025ab6ff95
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T10:48:33.632513300+00:00
-- finished_at: 2026-04-21T10:48:33.736760500+00:00
-- elapsed: 104ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_lineitem
-- query_id: 01c3db08-0001-b417-0002-5ab60001004a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T10:48:33.453735800+00:00
-- finished_at: 2026-04-21T10:48:34.186913300+00:00
-- elapsed: 733ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_region
-- query_id: 01c3db08-0001-b47f-0000-00025ab6ff99
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_region
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.region
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_region", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T10:48:34.546912+00:00
-- finished_at: 2026-04-21T10:48:34.752333100+00:00
-- elapsed: 205ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_customer
-- query_id: 01c3db08-0001-b46f-0000-00025ab6986d
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T10:48:34.868932600+00:00
-- finished_at: 2026-04-21T10:48:35.074253900+00:00
-- elapsed: 205ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_orders
-- query_id: 01c3db08-0001-b49a-0002-5ab600011022
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T10:48:35.175835200+00:00
-- finished_at: 2026-04-21T10:48:35.361236800+00:00
-- elapsed: 185ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_nation
-- query_id: 01c3db08-0001-b47f-0000-00025ab6ffa9
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T10:48:35.478424800+00:00
-- finished_at: 2026-04-21T10:48:35.592781100+00:00
-- elapsed: 114ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_part
-- query_id: 01c3db08-0001-b417-0002-5ab600010052
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T10:48:34.754653200+00:00
-- finished_at: 2026-04-21T10:48:35.724674700+00:00
-- elapsed: 970ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_customer
-- query_id: 01c3db08-0001-b47f-0000-00025ab6ffa1
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_customer
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.customer
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_customer", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T10:48:35.364723400+00:00
-- finished_at: 2026-04-21T10:48:35.946350300+00:00
-- elapsed: 581ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_nation
-- query_id: 01c3db08-0001-b417-0002-5ab60001004e
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_nation
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.nation
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_nation", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T10:48:35.594978400+00:00
-- finished_at: 2026-04-21T10:48:36.734942800+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_part
-- query_id: 01c3db08-0001-b417-0002-5ab600010056
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_part
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.PART
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_part", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T10:48:35.076505500+00:00
-- finished_at: 2026-04-21T10:48:36.756460500+00:00
-- elapsed: 1.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_orders
-- query_id: 01c3db08-0001-b47f-0000-00025ab6ffa5
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_orders
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.orders
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_orders", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T10:48:33.738848100+00:00
-- finished_at: 2026-04-21T10:48:38.958252900+00:00
-- elapsed: 5.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_lineitem
-- query_id: 01c3db08-0001-b47f-0000-00025ab6ff9d
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_lineitem
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.lineitem
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_lineitem", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
