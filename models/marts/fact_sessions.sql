select
    session_id,
    player_id,
    game_id,
    start_time,
    duration_min
from {{ ref('int_player_sessions') }}