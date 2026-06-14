with 

source as (

    select * from {{ source('RAW_ZELDA', 'raw_players') }}

),

renamed as (

    select
        player_id,
        country,
        age_group

    from source

)

select * from renamed