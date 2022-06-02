{% snapshot another %}

{{
    config(
      target_schema='snapshots',
      unique_key='id',

      strategy='check',
      check_cols=['value'],
    )
}}

select * from {{ ref('my_first_dbt_model') }}

{% endsnapshot %}
