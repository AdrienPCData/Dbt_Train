select
    gi.game_id,
    gi.item_id,
    gi.acquisition_method,

    g.title as game_title,

    i.item_name,
    i.category

from {{ ref('ODS_ZELDA_GAME_ITEMS') }} gi

left join {{ ref('ODS_ZELDA_GAMES') }} g
    on gi.game_id = g.game_id

left join {{ ref('ODS_ZELDA_ITEMS') }} i
    on gi.item_id = i.item_id