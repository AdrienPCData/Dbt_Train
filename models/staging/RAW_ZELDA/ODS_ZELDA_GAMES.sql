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
        metacritic_score,
        sales_million

    from source

)

select * from renamed