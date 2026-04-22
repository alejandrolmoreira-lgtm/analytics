
    
    

select
    lineitem_id as unique_field,
    count(*) as n_records

from analytics.analytics_prod.int_lineitem_enriched
where lineitem_id is not null
group by lineitem_id
having count(*) > 1


