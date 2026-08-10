SELECT
game_id
,title
,release_date
,EXTRACT(YEAR FROM release_date) AS release_year
,platform
,timeline
,main_villain
,is_mainline
from {{ref('ODS_ZELDA_GAMES')}}