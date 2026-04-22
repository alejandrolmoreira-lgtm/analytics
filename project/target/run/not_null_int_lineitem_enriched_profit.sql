
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select profit
from analytics.analytics_prod.int_lineitem_enriched
where profit is null



  
  
      
    ) dbt_internal_test