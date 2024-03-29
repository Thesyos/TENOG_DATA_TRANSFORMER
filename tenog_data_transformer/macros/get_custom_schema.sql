{% macro generate_schema_name(custom_schema_name, node) -%}
    {{ generate_schema_name_for_env(custom_schema_name, node) }}
{%- endmacro %}

{% macro generate_schema_name_for_env(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if target.name == 'prod' and custom_schema_name is not none -%}

        {{ custom_schema_name | trim }}

    {%- else -%}

        {%- if custom_schema_name is not none -%}

            {{ default_schema }}_{{ custom_schema_name | trim }}
        
        {%- else -%}

            {{ default_schema }}
        
        {%- endif -%}

    {%- endif -%}

{%- endmacro %}