with games as (
    select *
    from {{ ref('ODS_ZELDA_GAMES') }}
)
, reviews as (
    select
        game_id,
        avg(rating) as avg_rating,
        count(*) as review_count
    from {{ ref('ODS_ZELDA_REVIEWS') }}
    group by game_id
)

, sessions as (
    select
        game_id,
        count(*) as session_count,
        count(distinct player_id) as unique_players
    from {{ ref('ODS_ZELDA_SESSIONS') }}
    group by game_id
)

select
    g.game_id,
    g.title,
    g.release_date,
    g.platform,
    g.timeline,
    g.main_villain,

    r.avg_rating,
    r.review_count,

    s.session_count,
    s.unique_players

from games g
left join reviews r using (game_id)
left join sessions s using (game_id)