with 

source as (

    select * from {{ source('RAW_ZELDA', 'raw_achievements') }}

),

renamed as (

    select
        achievement_id,
        game_id,
        achievement_name

    from source

)

select * from renamed