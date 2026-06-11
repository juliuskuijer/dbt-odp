{{ config(
    materialized='table'
) }}

-- ❌ ref() inside a conditional — dbt can't see it
{% if some_condition %}
  select * from {{ ref('some_other_model') }}
{% endif %}