with
    customers as (
        select
        customer_sk
        , customerid
        , personid
        , storeid
        from {{ref('dim_sales_customer')}}
    ) ,
    orders_with_sk as (
        select
           salesorderheader.salesorderid
           , customers.customer_sk as customer_fk
           , salesorderheader.orderdate as orderdate
           , customers.personid as personid
           , customers.storeid as storeid
           from {{ref('stg_salesorderheader')}} salesorderheader
           left join customers customers on salesorderheader.customerid = customers.customerid
     ) ,
final as (
         select
         salesorderid
         , customer_fk
         , orderdate
         , storeid
         , personid
         from orders_with_sk         
     )
     select * from final