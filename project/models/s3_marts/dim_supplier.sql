with supplier as (

    select *
    from {{ ref('stg_supplier') }}

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
        s.supp_key

        --attributes
        , s.supp_name as supplier_name
        , s.supp_address as supplier_address
        , s.supp_phone as supplier_phone
        , s.supp_account_balance as supplier_account_balance

        --geography
        , n.nation_name as nation
        , r.region_name as region

    from supplier s

    left join nation n
        using(nation_key)

    left join region r
        using(region_key)

)

select * from final