select
    game_id,
    item_id,
    count(*) as nb

from {{ ref('fact_game_items') }}
group by
    game_id,
    item_id

having count(*) > 1