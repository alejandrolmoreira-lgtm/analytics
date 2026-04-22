with customer as (

    select *
    from {{ ref('stg_customer') }}

)

, nation as (

    select *
    from {{ ref('stg_nation') }}

)

, region as (

    select *
    from {{ ref('stg_region') }}

)

, final as (

    select
        --primary key
        c.cust_key as customer_key

        --customer atributes
        , c.cust_name as customer_name
        , c.cust_address as customer_address
        , c.cust_phone as customer_phone
        , c.cust_account_balance as customer_account_balance
        , c.cust_mktsegment as market_segment 

        --geography
        , n.nation_name as nation
        , r.region_name as region

    from customer c
    
    left join nation n
        using(nation_key)
    
    left join region r
        using(region_key)

)

select * from final