with orders as (
 select * from {{ ref('Stg_Orders')}}
),

daily as (
select 
  order_date,
  count(*) as order_num

from orders
group by 1

),

compared as(
    select *,
     lag(order_num) over (order by order_date) as previoud_day_orders

     from daily
)

select * from compared