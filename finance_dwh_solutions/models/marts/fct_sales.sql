{{ 
    config(
        materialized='view', 
        tags=['mart', 'sales'],
        alias='dim_sales' 
    ) 
}}

SELECT *
FROM {{ ref('stg_sales') }}
