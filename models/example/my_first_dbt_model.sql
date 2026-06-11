-- ✅ Valid Snowflake dbt config
{{ config(
    materialized='table',
    transient=false,           -- instead of OPTIONS(transient=true)
    cluster_by=['order_date'], -- instead of OPTIONS(cluster_by=...)
    tags=['gold']
) }}

select
  ...
from {{ ref('my_first_dbt_model') }}
where id != 1