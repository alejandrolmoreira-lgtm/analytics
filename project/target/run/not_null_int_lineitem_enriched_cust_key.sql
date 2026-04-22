
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select cust_key
from analytics.analytics_prod.int_lineitem_enriched
where cust_key is null



  
  
      
    ) dbt_internal_test