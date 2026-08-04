with 

source as (

    select * from {{ source('RAW_ZELDA', 'raw_game_item') }}

),

renamed as (

    select
    game_id,
    item_id,
    acquisition_method

    from source

)

select * from renamed