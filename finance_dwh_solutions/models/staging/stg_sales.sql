{{ 
    config(
        materialized='view', 
        tags=['staging', 'sales'],
        schema=generate_schema_name('stg_sales', this),
        alias='stg_sales'
    ) 
}}

SELECT * 
FROM
    {{ source('finance-dwh-gc', 'sales') }}

