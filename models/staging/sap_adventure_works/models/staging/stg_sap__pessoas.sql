with
    source_person as (
        select 
            cast(businessentityid as string) as id_entidade_comercial_da_pessoa
            ,cast(persontype as string) as tipo_da_pessoa
            ,cast(firstname as string) as primeiro_nome
            ,cast(middlename as string) as nome_do_meio
            ,cast(lastname as string) as ultimo_nome
            ,cast(suffix as string) as sufixo
            ,cast(concat(firstname, ' ', middlename, ' ', lastname) as string) as nome_completo
        from {{ source('sap', 'person') }}
    )

select *
from source_person