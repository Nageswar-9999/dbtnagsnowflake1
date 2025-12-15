{% snapshot customer_snapshot %}

{{ config(
    target_schema='PUBLIC',
    unique_key='id',
    strategy='timestamp',
    updated_at='UPDATED_DATE'
) }}

select
    id,
    name,
    country,
   UPDATED_DATE
from {{ ref('customer_trans') }}

{% endsnapshot %}

