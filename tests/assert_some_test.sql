with payments as (

    select * from {{ref("stg__orders")}}
)
select
    order_id,
    sum(price) as total_amount
    from payments
    group by order_id
    having total_amount <0