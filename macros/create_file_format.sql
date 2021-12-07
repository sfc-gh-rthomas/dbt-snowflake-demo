# macros/create_file_format.sql
{% macro create_file_format() %}
    {% set sql %}
     USE DATABASE {{ target.database }};
     USE SCHEMA {{ target.schema }};
     CREATE OR REPLACE FILE FORMAT csv
        TYPE = 'CSV'
        COMPRESSION = 'AUTO'
        FIELD_DELIMITER = ','
        RECORD_DELIMITER = '\n'
        SKIP_HEADER = 1
        FIELD_OPTIONALLY_ENCLOSED_BY = '\042'
        TRIM_SPACE = FALSE
        ERROR_ON_COLUMN_COUNT_MISMATCH = FALSE
        ESCAPE = 'NONE'
        ESCAPE_UNENCLOSED_FIELD = '\134'
        DATE_FORMAT = 'AUTO'
        TIMESTAMP_FORMAT = 'AUTO'
        NULL_IF = ('');
    {% endset %}
    {% do run_query(sql) %}
    {{ log("File Format created", info=True) }}
{% endmacro %}
