with
    source_data as (
        select
            salesreasonid
            , name
            , reasontype
            --, modifieddate

        from {{source('aw_erp','sales_salesreason')}}
    )
    select *
    from source_data