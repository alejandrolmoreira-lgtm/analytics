
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    lineitem_id as unique_field,
    count(*) as n_records

from analytics.analytics_prod.int_lineitem_enriched
where lineitem_id is not null
group by lineitem_id
having count(*) > 1



  
  
      
    ) dbt_internal_test