{% macro change_warehouse_size(size) %}
    {% set sql %}
    ALTER WAREHOUSE {{ target.warehouse }} SET warehouse_size= '{{ size }}'
    {% endset %}

    {% do run_query(sql) %}
    {{ log("WH size changed", info=True) }}

{% endmacro %}
