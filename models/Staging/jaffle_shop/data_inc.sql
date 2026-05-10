{{ config(materialized= 'incremental', unique_key='d_date') }}

select * from raw.jaffle_shop.Incremental_table
where d_date <= current_date+1

{% if is_incremental() %}
and d_date > ( select max(d_date) from {{ this }} )
{% endif %}