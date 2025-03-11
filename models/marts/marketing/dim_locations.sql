with nation as (

select * from {{ ref('stg__nation') }}

),

region as(

    select *
    from {{ ref('stg__region') }}

),


final as (

select
    nation.nation_key,
    nation.country,
    region.region

from nation
left join region using (region_key)
)

select * from final