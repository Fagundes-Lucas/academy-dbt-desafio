with
    source_address as (
        select 
            cast(addressid as int) as id_endereco
            ,cast(stateprovinceid as int) as id_estado
            ,cast(city as string) as cidade
        from {{ source('sap', 'address') }}
    )

select *
from source_address