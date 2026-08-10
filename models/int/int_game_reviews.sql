select
    r.review_id,
    r.player_id,
    r.game_id,
    r.rating,
    r.review_date,

    p.country,
    p.age_group,

    g.title as game_title,
    g.platform

from {{ ref('ODS_ZELDA_REVIEWS') }} r

left join {{ ref('ODS_ZELDA_PLAYERS') }} p
    on r.player_id = p.player_id

left join {{ ref('ODS_ZELDA_GAMES') }} g
    on r.game_id = g.game_id