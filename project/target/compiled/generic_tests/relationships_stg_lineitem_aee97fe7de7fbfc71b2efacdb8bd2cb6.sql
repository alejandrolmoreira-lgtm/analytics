
    
    

with child as (
    select supp_key as from_field
    from analytics.analytics_prod.stg_lineitem
    where supp_key is not null
),

parent as (
    select supp_key as to_field
    from analytics.analytics_prod.stg_supplier
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


