with 

source as (

    select * from {{ source('raw', 'Zelda_games') }}

),

renamed as (

    select *

    from source

)

select * from renamed