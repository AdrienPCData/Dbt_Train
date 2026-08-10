select
    gc.game_id,
    gc.character_id,
    gc.importance,

    g.title as game_title,

    c.name as character_name,
    c.race,
    c.gender,
    c.role

from {{ ref('ODS_ZELDA_GAME_CHARACTER') }} gc

left join {{ ref('ODS_ZELDA_GAMES') }} g
    on gc.game_id = g.game_id

left join {{ ref('ODS_ZELDA_CHARACTERS') }} c
    on gc.character_id = c.character_id