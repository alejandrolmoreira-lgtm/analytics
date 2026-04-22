select

    --primary key
    p.part_key as part_key

    --attributes
    , part_name as part_name
    , part_mfgr as manufacturer
    , part_brand as brand
    , part_type  as part_type
    , part_container part_container

    --reference price
    , part_retail_price as retail_price

from {{ ref('stg_part') }}