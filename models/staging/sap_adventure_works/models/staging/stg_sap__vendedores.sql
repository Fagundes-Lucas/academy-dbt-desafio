with
    source_salesperson as (
        select 
            cast(businessentityid as int) as id_entidade_comercial_do_vendedor
            ,cast(territoryid as int) as id_territorio
            ,cast(bonus as int) as bonus
            ,cast(commissionpct as numeric) as comissao
            ,cast(salesytd as numeric) as venda_ano_atual
            ,cast(saleslastyear as numeric) as venda_ano_passado
        from {{ source('sap', 'salesperson') }}
    )

select *
from source_salesperson