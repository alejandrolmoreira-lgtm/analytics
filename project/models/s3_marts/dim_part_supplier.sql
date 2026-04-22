select
    part_key
    , supp_key
    , part_supp_supply_cost as supply_cost
from {{ ref('stg_partsupp') }}