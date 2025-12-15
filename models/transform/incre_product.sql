{{ config(materialized='incremental', unique_key='PRODUCT_ID') }}

select * from {{ source('source', 'product_tbl') }} 

{% if is_incremental %} 
  where p_date >= (select max(p_date) from {{ this }})
{% endif %}