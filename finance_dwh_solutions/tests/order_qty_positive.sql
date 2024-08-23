WITH violations AS (
    SELECT
        salesorderid,
        orderqty
    FROM {{ ref('stg_sales') }}
    WHERE orderqty <= 0
)

SELECT *
FROM violations