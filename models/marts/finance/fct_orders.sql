
with customers as (

    select *
    from {{ ref('stg__customers') }}


),

orders as(

    select *
    from {{ ref('stg__orders') }}

),

amounts as (

select
    customer_id,
    price as amount
from orders

),

final as (

select
    orders.order_id,
    customers.customer_id,
    orders.order_date,
    amounts.amount

from customers
    left join orders using (customer_id)
    left join amounts using (customer_id)
)

select * from final