
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select lineitem_id
from analytics.analytics_prod.int_lineitem_enriched
where lineitem_id is null



  
  
      
    ) dbt_internal_test