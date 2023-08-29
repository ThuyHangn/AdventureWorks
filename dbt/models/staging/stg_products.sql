select ProductID
	,Name
	,ProductNumber
	,MakeFlag
	,FinishedGoodsFlag
	,Color
	,SafetyStockLevel
	,ReorderPoint
	,StandardCost
	,ListPrice
	,Size
	,SizeUnitMeasureCode
	,WeightUnitMeasureCode
	,Weight
	,DaysToManufacture
	,ProductLine
	,Class
	,Style
	,ProductSubcategoryID
	,ProductModelID
	,SellStartDate
	,SellEndDate
	,DiscontinuedDate
	,ModifiedDate
from {{source('prod', 'Product')}}