SELECT "ID" id
     , "NAME" name
     , "PHONE"  phone
     , "ADDRESS"  address
     , "MKTSEGMENT"  mktsegment
     , "REGION"  region
     , "COUNTRY"  country
     , 'Snowflake Sample Data' data_source_name
  FROM {{source('snowflake_external','customer')}}  src