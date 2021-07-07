{% macro insert_audits(action_name) -%}

INSERT INTO postgres.public.dbt_audits (audit_type)

VALUES ('{{ action_name }}');

commit;

{%- endmacro %}