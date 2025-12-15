{{ config(materialized="table") }}

select product_id, sum(price) total_sum
from {{ ref("RAW_SOURCE_DATA") }}
group by product_id
