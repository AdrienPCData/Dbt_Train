{% macro category_label(cat)%}

Case 
WHEN {{cat}} IN ('Weapon','Bow') THEN  'Combat'
WHEN {{cat}} IN ('Armor','Tool','Shield') THEN  'Equipment'
WHEN {{cat}} IN ('Food','Consumable') THEN  "Consumable"
WHEN {{cat}}='Material' THEN  'Resource'
WHEN {{cat}}='Currency' THEN 'Currency'
ELSE 'To define' END 

{% endmacro %}