with
    source_creditcard as (
        select 
            cast(creditcardid as int) as id_cartao_de_credito
            ,cast(cardtype as string) as tipo_do_cartao_de_credito
        from {{ source('sap', 'creditcard') }}
    )

select *
from source_creditcard