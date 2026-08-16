with 

source as (

    select * from {{ source('RAW_ZELDA', 'raw_characters') }}

),

renamed as (

    select
        character_id,
        name,
        race,
        gender,
        role

    from source

)

select * from renamed