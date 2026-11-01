{{ config(materialized='table') }}

select
    OS.CustomerID,
    C.CustomerName,
    SUM(OS.OrderCount) as OrderCount,
    SUM(OS.Revenue) as Revenue
from {{ ref('orders_fact') }} OS
join {{ ref('customers_stg') }} C on OS.CustomerID = C.CustomerID
group by OS.CustomerID, C.CustomerName