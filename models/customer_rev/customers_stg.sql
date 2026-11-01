{{ config(materialized='table') }}

SELECT 
    CustomerID,
    FirstName,
    LastName,
    Email,
    Phone,
    Address,
    City,
    State,
    ZipCode,
    Updated_at,
    CONCAT(FirstName, ' ', LastName) as CustomerName
FROM 
    {{ source('landing', 'customers') }}