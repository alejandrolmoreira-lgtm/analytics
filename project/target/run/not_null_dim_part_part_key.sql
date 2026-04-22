
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select part_key
from analytics.analytics_prod.dim_part
where part_key is null



  
  
      
    ) dbt_internal_test