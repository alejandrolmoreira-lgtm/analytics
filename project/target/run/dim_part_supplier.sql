
  
    



create or replace transient  table analytics.analytics_prod.dim_part_supplier
    
    
    
    as (select
    part_key
    , supp_key
    , part_supp_supply_cost as supply_cost
from analytics.analytics_prod.stg_partsupp
    )
;




  