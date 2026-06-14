with 

source as (

    select * from {{ source('RAW_ZELDA', 'raw_locations') }}

),

renamed as (

    select
        location_id,
        name,
        region_type

    from source

)

select * from renamed