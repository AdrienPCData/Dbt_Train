with 

source as (

    select * from {{ source('RAW_ZELDA', 'raw_games') }}

),

renamed as (

    select
        game_id,
        title,
        release_date,
        platform,
        timeline,
        main_villain,
        is_mainline

    from source


)

select * from renamed