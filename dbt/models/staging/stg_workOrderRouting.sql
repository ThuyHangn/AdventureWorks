SELECT WorkOrderID
      ,ProductID
      ,OperationSequence
      ,LocationID
      ,ScheduledStartDate
      ,ScheduledEndDate
      ,ActualStartDate
      ,ActualEndDate
      ,ActualResourceHrs
      ,PlannedCost
      ,ActualCost
      ,ModifiedDate
  FROM {{source('prod', 'WorkOrderRouting')}}