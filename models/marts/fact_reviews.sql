select
    review_id,
    player_id,
    game_id,
    rating,
    review_date
from {{ ref('int_game_reviews') }}