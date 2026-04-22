
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    supp_key as unique_field,
    count(*) as n_records

from analytics.analytics_prod.dim_supplier
where supp_key is not null
group by supp_key
having count(*) > 1



  
  
      
    ) dbt_internal_test