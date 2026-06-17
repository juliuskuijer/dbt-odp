{{
    config
    (
    materialized="incremental",
    unique_key='order_id'
    )

}}

with Orders as(

        Select * from {{'Stg_orders'}}
        {% if is_incremental() %}
        where order_date >= (select dateadd('day',-3,max(order_date)) from {{this}})
        {% endif %}
)

select * from Orders