with 

source as (

    select * from {{ source('RAW_ZELDA', 'raw_items') }}

),

renamed as (

    select
        item_id,
        item_name,
        category,
        rarity,
        base_value

    from source

)

select * from renamed