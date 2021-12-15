SELECT "ORDER_ID"        order_id
     , "CUSTOMER_ID"    customer_id
     , "ORDER_DATE"       order_date
     , "ORDER_STATUS"            order_status
     , "ORDER_AMOUNT"         order_amount
     , 'Snowflake Sample Data' data_source_name
  FROM {{source('snowflake_external','orders')}}  src