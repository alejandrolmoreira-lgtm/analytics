
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_cost
from analytics.analytics_prod.int_lineitem_enriched
where total_cost is null



  
  
      
    ) dbt_internal_test