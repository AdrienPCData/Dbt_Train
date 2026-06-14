with 

source as (

    select * from {{ source('RAW_ZELDA', 'raw_reviews') }}

),

renamed as (

    select
        review_id,
        player_id,
        game_id,
        rating,
        review_date

    from source

)

select * from renamed