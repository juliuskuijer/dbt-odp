select 
    order_id,
    SUM(amount) AS total_amount
from {{ ref('Stg_Payments')}}
group by 1
having not(total_amount>0)