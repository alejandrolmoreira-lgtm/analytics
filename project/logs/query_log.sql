-- created_at: 2026-04-21T09:48:48.538970700+00:00
-- finished_at: 2026-04-21T09:48:48.720006900+00:00
-- elapsed: 181ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c3dacc-0001-b46f-0000-00025ab697d1
-- desc: execute adapter call
show terse schemas in database analytics
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:48:49.032315100+00:00
-- finished_at: 2026-04-21T09:48:49.224684+00:00
-- elapsed: 192ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_partsupp
-- query_id: 01c3dacc-0001-b47f-0000-00025ab6fee1
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:48:49.343564900+00:00
-- finished_at: 2026-04-21T09:48:49.457882700+00:00
-- elapsed: 114ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_orders
-- query_id: 01c3dacc-0001-b47f-0000-00025ab6fee9
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:48:49.712720600+00:00
-- finished_at: 2026-04-21T09:48:49.829988400+00:00
-- elapsed: 117ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_customer
-- query_id: 01c3dacc-0001-b47f-0000-00025ab6feed
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:48:50.719396700+00:00
-- finished_at: 2026-04-21T09:48:50.862308300+00:00
-- elapsed: 142ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_region
-- query_id: 01c3dacc-0001-b46f-0000-00025ab697dd
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:48:49.833273200+00:00
-- finished_at: 2026-04-21T09:48:51.064326900+00:00
-- elapsed: 1.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_customer
-- query_id: 01c3dacc-0001-b46f-0000-00025ab697d9
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_customer
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_customer", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:48:51.034220400+00:00
-- finished_at: 2026-04-21T09:48:51.157081500+00:00
-- elapsed: 122ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_lineitem
-- query_id: 01c3dacc-0001-b46f-0000-00025ab697e1
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:48:49.227042700+00:00
-- finished_at: 2026-04-21T09:48:51.280203600+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_partsupp
-- query_id: 01c3dacc-0001-b47f-0000-00025ab6fee5
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_partsupp
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.PARTSUPP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_partsupp", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:48:49.460112900+00:00
-- finished_at: 2026-04-21T09:48:51.358077+00:00
-- elapsed: 1.9s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_orders
-- query_id: 01c3dacc-0001-b46f-0000-00025ab697d5
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_orders
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_orders", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:48:51.319589600+00:00
-- finished_at: 2026-04-21T09:48:51.451709200+00:00
-- elapsed: 132ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_nation
-- query_id: 01c3dacc-0001-b46f-0000-00025ab697e5
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:48:50.864787+00:00
-- finished_at: 2026-04-21T09:48:51.467975200+00:00
-- elapsed: 603ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_region
-- query_id: 01c3dacc-0001-b47f-0000-00025ab6fef1
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_region
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.REGION
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_region", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:48:51.593017500+00:00
-- finished_at: 2026-04-21T09:48:51.721861500+00:00
-- elapsed: 128ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_part
-- query_id: 01c3dacc-0001-b46f-0000-00025ab697e9
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:48:51.454464300+00:00
-- finished_at: 2026-04-21T09:48:52.035114800+00:00
-- elapsed: 580ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_nation
-- query_id: 01c3dacc-0001-b47f-0000-00025ab6fef9
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_nation
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.NATION
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_nation", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:48:51.907979300+00:00
-- finished_at: 2026-04-21T09:48:52.039831800+00:00
-- elapsed: 131ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_supplier
-- query_id: 01c3dacc-0001-b47f-0000-00025ab6fefd
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-21T09:48:52.042035600+00:00
-- finished_at: 2026-04-21T09:48:52.729949100+00:00
-- elapsed: 687ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_supplier
-- query_id: 01c3dacc-0001-b47f-0000-00025ab6ff01
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_supplier
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.SUPPLIER
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_supplier", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:48:51.725015500+00:00
-- finished_at: 2026-04-21T09:48:52.956672100+00:00
-- elapsed: 1.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_part
-- query_id: 01c3dacc-0001-b46f-0000-00025ab697ed
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_part
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.PART
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_part", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T09:48:51.159988+00:00
-- finished_at: 2026-04-21T09:48:56.132572700+00:00
-- elapsed: 5.0s
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.stg_lineitem
-- query_id: 01c3dacc-0001-b47f-0000-00025ab6fef5
-- desc: execute adapter call
create or replace transient  table analytics.analytics_prod.stg_lineitem
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.LINEITEM
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.project.stg_lineitem", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
