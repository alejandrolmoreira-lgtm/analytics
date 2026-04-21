
  
    



create or replace transient  table analytics.analytics_prod.stg_part
    
    
    
    as (select *
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.part
    )
;




  