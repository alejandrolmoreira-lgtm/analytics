-- created_at: 2026-04-21T09:42:21.420624300+00:00
-- finished_at: 2026-04-21T09:42:21.536564100+00:00
-- elapsed: 115ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c3dac6-0001-b46f-0000-00025ab697a9
-- desc: execute adapter call
show terse schemas in database analytics
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:42:22.517924600+00:00
-- finished_at: 2026-04-21T09:42:22.657258500+00:00
-- elapsed: 139ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_lineitem
-- query_id: 01c3dac6-0001-b47f-0000-00025ab6fea5
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:42:22.807689100+00:00
-- finished_at: 2026-04-21T09:42:22.937155900+00:00
-- elapsed: 129ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_orders
-- query_id: 01c3dac6-0001-b47f-0000-00025ab6fea9
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:42:23.108409600+00:00
-- finished_at: 2026-04-21T09:42:23.232015+00:00
-- elapsed: 123ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_part
-- query_id: 01c3dac6-0001-b47f-0000-00025ab6feb1
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:42:23.410299700+00:00
-- finished_at: 2026-04-21T09:42:23.535459+00:00
-- elapsed: 125ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_partsupp
-- query_id: 01c3dac6-0001-b47f-0000-00025ab6feb9
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:42:23.689103400+00:00
-- finished_at: 2026-04-21T09:42:23.813656300+00:00
-- elapsed: 124ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_customer
-- query_id: 01c3dac6-0001-b47f-0000-00025ab6febd
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:42:24.000769700+00:00
-- finished_at: 2026-04-21T09:42:24.112999500+00:00
-- elapsed: 112ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_region
-- query_id: 01c3dac6-0001-b47f-0000-00025ab6fec1
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:42:24.292324900+00:00
-- finished_at: 2026-04-21T09:42:24.410727100+00:00
-- elapsed: 118ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_nation
-- query_id: 01c3dac6-0001-b47f-0000-00025ab6fec9
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:42:22.939356700+00:00
-- finished_at: 2026-04-21T09:42:24.622104500+00:00
-- elapsed: 1.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_orders
-- query_id: 01c3dac6-0001-b47f-0000-00025ab6fead
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_orders
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_orders", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:42:24.591575400+00:00
-- finished_at: 2026-04-21T09:42:24.732453500+00:00
-- elapsed: 140ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_supplier
-- query_id: 01c3dac6-0001-b46f-0000-00025ab697bd
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:42:24.116341800+00:00
-- finished_at: 2026-04-21T09:42:24.745103500+00:00
-- elapsed: 628ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_region
-- query_id: 01c3dac6-0001-b47f-0000-00025ab6fec5
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_region
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.REGION
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_region", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:42:23.236780+00:00
-- finished_at: 2026-04-21T09:42:24.785206900+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_part
-- query_id: 01c3dac6-0001-b47f-0000-00025ab6feb5
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_part
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.PART
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_part", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:42:23.815966900+00:00
-- finished_at: 2026-04-21T09:42:25.018119900+00:00
-- elapsed: 1.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_customer
-- query_id: 01c3dac6-0001-b46f-0000-00025ab697b5
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_customer
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_customer", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:42:24.413843100+00:00
-- finished_at: 2026-04-21T09:42:25.124185100+00:00
-- elapsed: 710ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_nation
-- query_id: 01c3dac6-0001-b46f-0000-00025ab697b9
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_nation
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.NATION
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_nation", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:42:23.537875+00:00
-- finished_at: 2026-04-21T09:42:25.297242100+00:00
-- elapsed: 1.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_partsupp
-- query_id: 01c3dac6-0001-b46f-0000-00025ab697b1
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_partsupp
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.PARTSUPP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_partsupp", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:42:24.735519400+00:00
-- finished_at: 2026-04-21T09:42:25.311612200+00:00
-- elapsed: 576ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_supplier
-- query_id: 01c3dac6-0001-b47f-0000-00025ab6fecd
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_supplier
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.SUPPLIER
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_supplier", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:42:22.660050600+00:00
-- finished_at: 2026-04-21T09:42:28.340969800+00:00
-- elapsed: 5.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_lineitem
-- query_id: 01c3dac6-0001-b46f-0000-00025ab697ad
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_lineitem
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.LINEITEM
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_lineitem", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
