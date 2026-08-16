select
    location_id,
    name,
    region_type
from {{ ref('ODS_ZELDA_LOCATIONS') }}