
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table', location_root='s3a://warehouse/first_model/', file_format='delta') }}

with source_data as (

    select 1 id, 7 value
    union all
    select 2 id, 3 value
    union all
    select 3 id, 4 value

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
