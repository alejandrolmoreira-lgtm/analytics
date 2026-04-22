select
    p.part_name,
    sum(f.net_revenue) as revenue,
    sum(f.total_cost) as cost,
    sum(f.profit) as profit

from analytics.analytics_prod.fact_lineitem f
left join analytics.analytics_prod.dim_part p
    on f.part_key = p.part_key

group by p.part_name
order by profit desc