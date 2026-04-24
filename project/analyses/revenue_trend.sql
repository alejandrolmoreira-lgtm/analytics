select
    order_date
    , sum(net_revenue) as daily_revenue

from {{ ref('fact_lineitem') }}
group by order_date
order by order_date