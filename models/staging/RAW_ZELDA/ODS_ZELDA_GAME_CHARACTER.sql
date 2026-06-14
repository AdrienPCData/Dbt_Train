with 

source as (

    select * from {{ source('RAW_ZELDA', 'raw_game_character') }}

),

renamed as (

    select
        game_id,
        character_id,
        importance

    from source

)

select * from renamed