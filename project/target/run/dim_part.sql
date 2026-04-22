
  
    



create or replace transient  table analytics.analytics_prod.dim_part
    
    
    
    as (select

    --primary key
    part_key as part_key

    --attributes
    , part_name as part_name
    , part_mfgr as manufacturer
    , part_size as part_size
    , part_type  as part_type
    , part_container part_container

    --reference price
    , part_retail_price as retail_price

from analytics.analytics_prod.stg_part
    )
;




  