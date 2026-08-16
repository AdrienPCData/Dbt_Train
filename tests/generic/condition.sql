{% test condition(model, column_name, condition) %}

select *
from {{ model }}
where not ({{ condition }})

{% endtest %}