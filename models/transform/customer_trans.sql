{{ config(materialized = 'view')}}


SELECT  
 id,
    name,
    country,
     TO_DATE(UPDATED_DATE, 'DD-MM-YYYY') UPDATED_DATE

FROM {{ source('source1','CUSTOMER_SEED')}}