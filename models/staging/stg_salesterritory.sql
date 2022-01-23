with
    source_data as (
        select
            territoryid
            , name
            , countryregioncode
            --, group
            --, salesytd
            --, saleslastyear
            --, costytd
            --, costlastyear
            --, rowguid
            --, modifieddate

        from {{source('aw_erp','sales_salesterritory')}}
    )
    select *
    from source_data