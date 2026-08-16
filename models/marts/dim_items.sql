SELECT
item_id,
item_name,
category,
rarity,
base_value,
{{ rarity_score('rarity') }} as rarity_score,
{{ category_label('category') }} as category_label

FROM {{ref('ODS_ZELDA_ITEMS')}}