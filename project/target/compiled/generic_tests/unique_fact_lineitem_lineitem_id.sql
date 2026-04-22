
    
    

select
    lineitem_id as unique_field,
    count(*) as n_records

from analytics.analytics_prod.fact_lineitem
where lineitem_id is not null
group by lineitem_id
having count(*) > 1


