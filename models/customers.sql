{{ config(
    materialized='table'
) }}

select
    1 as customer_id,
    'Alice' as customer_name,
    'alice@example.com' as email
union all
select
    2,
    'Bob',
    'bob@example.com'
union all
select
    3,
    'Charlie',
    'charlie@example.com'