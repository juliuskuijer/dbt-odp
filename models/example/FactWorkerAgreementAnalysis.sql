
-- Use the `ref` function to select from other models

select *
from {{ ref('DimWorkerwhere id = 1
