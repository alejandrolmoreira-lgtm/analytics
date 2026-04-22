
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select order_key
from analytics.analytics_prod.stg_lineitem
where order_key is null



  
  
      
    ) dbt_internal_test