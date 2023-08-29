select 
    ProductID
    , LocationID
    , Shelf
    , Bin
    , Quantity
    , rowguid
    , ModifiedDate 
from {{source('prod', 'ProductInventory')}}