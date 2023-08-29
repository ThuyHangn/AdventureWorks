select 
    ProductModelID
    , Name
    , ModifiedDate 
from {{source('prod', 'ProductModel')}}