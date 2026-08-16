select
    s.session_id,
    s.player_id,
    s.game_id,
    s.start_time,
    s.duration_min,

    p.country,
    p.age_group,

    g.title as game_title,
    g.platform

from {{ ref('ODS_ZELDA_SESSIONS') }} s

left join {{ ref('ODS_ZELDA_PLAYERS') }} p
    on s.player_id = p.player_id

left join {{ ref('ODS_ZELDA_GAMES') }} g
    on s.game_id = g.game_id