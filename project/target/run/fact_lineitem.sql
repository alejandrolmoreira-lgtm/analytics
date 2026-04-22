
  
    



create or replace transient  table analytics.analytics_prod.fact_lineitem
    
    
    
    as (select *
from analytics.analytics_prod.int_lineitem_enriched
    )
;




  