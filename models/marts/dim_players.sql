select
    player_id,
    country,
    age_group
    FROM {{ref('ODS_ZELDA_PLAYERS')}}
    