select *
from {{ ref('int_lineitem_enriched') }}
