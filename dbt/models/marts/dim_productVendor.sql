SELECT ProductID
      ,BusinessEntityID as VendorID
      ,AverageLeadTime
      ,StandardPrice
      ,LastReceiptCost
      ,LastReceiptDate
      ,MinOrderQty
      ,MaxOrderQty
      ,OnOrderQty
      ,UnitMeasureCode
      ,ModifiedDate
  FROM {{source('purchase', 'ProductVendor')}}