Select ProductSubcategoryID
    , ProductCategoryID
    , Name
    , ModifiedDate 
from {{source('prod', 'ProductSubCategory')}} 