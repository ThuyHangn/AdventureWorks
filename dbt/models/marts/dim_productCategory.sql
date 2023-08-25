select ProductCategoryID
    , Name
    , ModifiedDate 
from {{source('prod','ProductCategory')}}