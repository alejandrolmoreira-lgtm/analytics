
    
    

select
    customer_key as unique_field,
    count(*) as n_records

from analytics.analytics_prod.dim_customer
where customer_key is not null
group by customer_key
having count(*) > 1


