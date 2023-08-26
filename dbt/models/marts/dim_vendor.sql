select v.BusinessEntityID as VendorID
	, v.AccountNumber
	, v.Name
	, v.CreditRating
	, v.PreferredVendorStatus
	, v.ActiveFlag
	, v.ModifiedDate
	, ct.Name as ContactType
	, ba.AddressID
	, att.Name as AddressType
from {{source('purchase','Vendor')}} v
left join {{source('person','BusinessEntityContact')}} bea on v.BusinessEntityID = bea.BusinessEntityID
left join {{source('person','ContactType')}} ct on bea.ContactTypeID= ct.ContactTypeID
left join {{source('person','BusinessEntityAddress')}} ba on v.BusinessEntityID= ba.BusinessEntityID
left join {{source('person','AddressType')}} att on ba.AddressTypeID = att.AddressTypeID