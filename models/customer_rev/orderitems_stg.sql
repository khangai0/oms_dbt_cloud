SELECT
    OrderItemID,
    OrderID,
    ProductID,
    Quantity,
    UnitPrice,
    Quantity * UnitPrice as TotalPrice,
    Updated_at
FROM 
    {{ source('landing', 'orderitems') }}