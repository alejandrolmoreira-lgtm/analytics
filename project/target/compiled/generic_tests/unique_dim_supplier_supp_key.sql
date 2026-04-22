
    
    

select
    supp_key as unique_field,
    count(*) as n_records

from analytics.analytics_prod.dim_supplier
where supp_key is not null
group by supp_key
having count(*) > 1


