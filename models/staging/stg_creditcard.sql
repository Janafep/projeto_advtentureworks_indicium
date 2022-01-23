with
    source_data as (
        select
            Creditcardid
            , Cardtype
            --, Cardnumber
            --, expmonth	
            --, expyear	
            --, modifieddate
        from {{source('aw_erp','sales_creditcard')}}
    )
    select *
    from source_data