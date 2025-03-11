select
r_regionkey as region_key,
r_name as region
from {{ source('dbt_annie', 'region') }}