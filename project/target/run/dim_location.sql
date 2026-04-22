
  
    



create or replace transient  table analytics.analytics_prod.dim_location
    
    
    
    as (with nation as (

    select *
    from analytics.analytics_prod.stg_nation

)

, region as (

    select *
    from analytics.analytics_prod.stg_region

)

, final as (

    select

        --primary key
        n.nation_key

        --attributes
        , n.nation_name as nation
        , r.region_name as region

    from nation n

    left join region r
        using(region_key)

)

select * from final
    )
;




  