select 
    o_orderkey as order_id,
    o_custkey as customer_id,
    o_orderdate as order_date,
    o_orderpriority as status,
    o_totalprice as price

from {{ source('dbt_annie', 'orders') }}