-- created_at: 2026-04-21T15:39:23.859535600+00:00
-- finished_at: 2026-04-21T15:39:24.144904500+00:00
-- elapsed: 285ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.not_null_stg_customer_c_custkey.0cb4d30172
-- query_id: 01c3dc2b-0001-b49a-0002-5ab600013042
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select c_custkey
from analytics.analytics_prod.stg_customer
where c_custkey is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.not_null_stg_customer_c_custkey.0cb4d30172", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-21T15:39:24.787577300+00:00
-- finished_at: 2026-04-21T15:39:25.167823600+00:00
-- elapsed: 380ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.unique_stg_customer_c_custkey.281eb92577
-- query_id: 01c3dc2b-0001-b4ae-0002-5ab600014026
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    c_custkey as unique_field,
    count(*) as n_records

from analytics.analytics_prod.stg_customer
where c_custkey is not null
group by c_custkey
having count(*) > 1



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.unique_stg_customer_c_custkey.281eb92577", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
