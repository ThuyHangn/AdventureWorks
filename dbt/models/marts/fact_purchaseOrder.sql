select PurchaseOrderID
	, RevisionNumber
	, Status
	, EmployeeID
	, VendorID
	, ShipMethodID
	, OrderDate
	, ShipDate
	, SubTotal, TaxAmt
	, Freight
	, TotalDue
	, ModifiedDate
from {{source('purchase', 'PurchaseOrderHeader')}}