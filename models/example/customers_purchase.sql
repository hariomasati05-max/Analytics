select c.c_custkey,c.c_name,c.c_nationkey as nation,
sum(o.o_totalprice) as total_order_price
from {{ source('macros_shop', 'SNO_CUSTOMERS') }} c 
left join {{ source ('macros_shop', 'SNO_ORDERED') }} o
on c.c_custkey = o.o_custkey
{{ group_by(3)}}