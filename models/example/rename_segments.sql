select c_custkey, C_MKTSEGMENT, 
{{ rename_segments("c_mktsegment") }} mkt_segment_adjusted
from {{ source('macros_shop', 'SNO_CUSTOMERS') }}