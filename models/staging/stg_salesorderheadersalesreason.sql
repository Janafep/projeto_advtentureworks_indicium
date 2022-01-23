with
    source_data as (
        select
            salesorderid
            , salesreasonid
            --, modifieddate

        from {{source('aw_erp','sales_salesorderheadersalesreason')}}
    )
    select *
    from source_data