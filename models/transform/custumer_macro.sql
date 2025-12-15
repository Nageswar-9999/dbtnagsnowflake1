{{ config(materialized = 'view')}}


SELECT  
 id,
    name,
    country,
     TO_DATE(UPDATED_DATE, 'DD-MM-YYYY') UPDATED_DATE,
     {{ get_current_ts() }} load_date

FROM {{ source('source1','CUSTOMER_SEED') }}