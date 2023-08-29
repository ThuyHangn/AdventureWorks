SELECT WorkOrderID
      ,ProductID
      ,OrderQty
      ,StockedQty
      ,ScrappedQty
      ,StartDate
      ,EndDate
      ,DueDate
      ,ScrapReasonID
      ,ModifiedDate
  FROM {{source('prod', 'WorkOrder')}} 