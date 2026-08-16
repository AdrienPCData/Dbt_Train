{% macro rarity_score(rarity_column) %}

    case
        when {{ rarity_column }} = 'Common' then 1
        when {{ rarity_column }} = 'Rare' then 2
        when {{ rarity_column }} = 'Epic' then 3
        when {{ rarity_column }} = 'Legendary' then 4
        else 0
    end

{% endmacro %}