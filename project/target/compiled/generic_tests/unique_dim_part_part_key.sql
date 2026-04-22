
    
    

select
    part_key as unique_field,
    count(*) as n_records

from analytics.analytics_prod.dim_part
where part_key is not null
group by part_key
having count(*) > 1


