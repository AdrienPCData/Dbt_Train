SELECT
game_id,
character_id,
importance
FROM {{ref('ODS_ZELDA_GAME_CHARACTER')}}