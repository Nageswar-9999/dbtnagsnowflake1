{{config(
    materialized = 'table'
)}}

SELECT 
 EMP_ID,
    upper(EMP_NAME) as EMP_NAME,
    DEPT,
    SALARY,
    UPDATED_AT
    FROM {{ref("RAW_SOURCE_DATA")}}