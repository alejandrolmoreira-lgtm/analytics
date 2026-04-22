select
    c.customer_name
    , sum(f.net_revenue) as total_revenue
    , sum(f.profit) as total_profit

from analytics.analytics_prod.fact_lineitem f
left join analytics.analytics_prod.dim_customer c
    on f.customer_key = c.customer_key

group by c.customer_name
order by total_profit desc