select
    game_id,
    item_id,
    acquisition_method
from {{ ref('int_game_items') }}