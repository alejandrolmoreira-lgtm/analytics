with lineitem as (

    select *
    from {{ ref('stg_lineitem') }}

)

, orders as (

    select *
    from {{ ref('stg_orders') }}

)

, customer as (

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

, supplier as (

    select *
    from {{ ref('stg_supplier') }}

)

, part as (

    select *
    from {{ ref('stg_part') }}

)

, part_supplier as (

    select *
    from {{ ref('stg_partsupp') }}

)


, final as (
    select
        --grain keys
        concat(l.order_key, '-', l.line_number) as lineitem_id
        , o.order_key as order_key
        , l.line_number as line_number

        --foreign keys
        , l.part_key as part_key
        , l.supp_key as supp_key
        , o.cust_key as cust_key

        --order info
        , o.order_date as order_date

        --geography
        , n.nation_name as nation
        , r.region_name as region

        --metrics
        , l.line_quantity as quantity
        , p.part_retail_price as retail_price
        , l.line_extended_price as gross_revenue
        , l.line_discount as discount
        , l.line_tax as tax
        , ps.part_supp_supply_cost as supply_cost

        --derived metrics
        , (p.part_retail_price * l.line_quantity) - l.line_extended_price as price_variance
        , l.line_extended_price * (1 - l.line_discount) as net_revenue
        , l.line_extended_price * l.line_discount as discount_amount
        , p.part_retail_price * l.line_quantity as expected_revenue
        , l.line_quantity * ps.part_supp_supply_cost as total_cost
        , (l.line_extended_price * (1 - l.line_discount)) - (l.line_quantity * ps.part_supp_supply_cost) as profit


    from lineitem l

    left join orders o
        using (order_key)

    left join customer c
        using (cust_key)

    left join nation n
        using(nation_key)

    left join region r
        using(region_key)

    left join supplier s
        using(supp_key)

    left join part p
        using(part_key)

    left join part_supplier ps
        using(part_key, supp_key)
)

select * from final