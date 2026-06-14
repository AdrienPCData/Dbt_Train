with 

source as (

    select * from {{ source('RAW_ZELDA', 'raw_sessions') }}

),

renamed as (

    select
        session_id,
        player_id,
        game_id,
        start_time,
        duration_min

    from source

)

select * from renamed