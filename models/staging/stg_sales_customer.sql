with
    source_data as (
        select
            customerid
            , personid
            , storeid
            , territoryid
            --, rowguid
            --, modifieddate

        from {{source('aw_erp','sales_customer')}}
    )
    select *
    from source_data