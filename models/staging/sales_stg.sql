{{ 
    config(materialized='table') 
    
    }}

SELECT
  *
FROM DBT_DB.RAW.SALES_FACT
