select
n_nationkey as nation_key,
n_name as country,
n_regionkey as region_key
from {{ source('dbt_annie', 'nation') }}