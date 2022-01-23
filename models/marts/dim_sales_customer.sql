with
    staging as (
        select *
        from {{ref('stg_sales_customer')}}
)
    , transformed as (
       select
            row_number() over (order by customerid) as customer_sk --auto-incremental surrogate key
            , customerid
            , personid
            , storeid
            , territoryid
            --, rowguid
            --, modifieddate
            from staging
    )
select * from transformed