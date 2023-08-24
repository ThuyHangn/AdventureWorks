select SalesOrderID
	, OrderDate, DueDate, ShipDate
	, Status, OnlineOrderFlag, SalesOrderNumber, PurchaseOrderNumber
	, AccountNumber, CustomerID, SalesPersonID
	, BillToAddressID, ShipToAddressID, ShipMethodID
	, SubTotal, TaxAmt, Freight, TotalDue, Comment, ModifiedDate
from {{source('sales', 'SalesOrderHeader')}}