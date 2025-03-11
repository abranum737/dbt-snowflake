select 
    c_custkey as customer_id,
    c_name as first_name,
    c_acctbal as account_balance

from {{ source('dbt_annie', 'customer') }}