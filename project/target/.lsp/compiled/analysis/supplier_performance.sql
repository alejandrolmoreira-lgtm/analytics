select
    s.supplier_name
    , sum(f.total_cost) as total_cost
    , sum(f.profit) as total_profit

from analytics.analytics_prod.fact_lineitem f
left join analytics.analytics_prod.dim_supplier s
    on f.supp_key = s.supp_key

group by s.supplier_name
order by total_profit desc