
  
    



create or replace transient  table analytics.analytics_prod.dim_date
    
    
    
    as (select

    order_date as date

    --basics
    , extract(year from order_date) as year
    , extract(month from order_date) as month
    , extract(day from order_date) as day

    --week
    , extract(week from order_date) as week
    , extract(dayofweek from order_date) as day_of_week

    --others
    , date_trunc('month', order_date) as month_start
    , date_trunc('year', order_date) as year_start

from analytics.analytics_prod.stg_orders
    )
;




  