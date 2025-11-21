-- {{ config(materialized='view') }}


with cte as (
    select * 
    from {{ source('source','PRODUCT') }}
)

select sum(SALE_AMOUNT) SALE_AMOUNT
from cte
