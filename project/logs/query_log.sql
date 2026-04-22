-- created_at: 2026-04-22T11:31:09.769186300+00:00
-- finished_at: 2026-04-22T11:31:09.873064500+00:00
-- elapsed: 103ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c3e0d3-0001-b3ec-0002-5ab60001b2a6
-- desc: execute adapter call
show terse schemas in database analytics
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-22T11:31:10.854170100+00:00
-- finished_at: 2026-04-22T11:31:10.991626300+00:00
-- elapsed: 137ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.dim_customer
-- query_id: 01c3e0d3-0001-b501-0002-5ab60001c26a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS"."ANALYTICS_PROD" LIMIT 10000;
-- created_at: 2026-04-22T11:31:10.995600700+00:00
-- finished_at: 2026-04-22T11:31:11.724150900+00:00
-- elapsed: 728ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.project.dim_customer
-- query_id: 01c3e0d3-0001-b518-0002-5ab60001e186
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
