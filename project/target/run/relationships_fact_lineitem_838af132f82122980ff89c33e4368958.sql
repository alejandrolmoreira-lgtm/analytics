
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select supp_key as from_field
    from analytics.analytics_prod.fact_lineitem
    where supp_key is not null
),

parent as (
    select supp_key as to_field
    from analytics.analytics_prod.dim_supplier
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test