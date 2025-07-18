
{{ 
    config(materialized='table') 
    
    }}

SELECT
  STORE_ID,SUM(AMOUNT) AS TOTAL_AMOUNT
FROM {{ ref('sales_stg') }}
GROUP BY  STORE_ID ORDER BY TOTAL_AMOUNT DESC