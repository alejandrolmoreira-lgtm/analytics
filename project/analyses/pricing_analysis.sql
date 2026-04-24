select
    p.part_name
    , avg(f.price_variance) as avg_price_variance

from {{ ref('fact_lineitem') }} f
left join {{ ref('dim_part') }} p
    on f.part_key = p.part_key

group by p.part_name
order by avg_price_variance desc