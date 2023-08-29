Select s.BusinessEntityID as StoreID
	, s.Name
    , s.SalesPersonID
	, bea.AddressID
    , att.Name as AdressType
	, sc.ContactType
    , sc.Title
    , sc.FirstName
    , sc.MiddleName
    , sc.LastName
    , sc.PhoneNumber
	, sc.PhoneNumberType
    , sc.EmailAddress
    , sc.EmailPromotion
	, sd.BankName
    , sd.BusinessType
    , sd.YearOpened
    , sd.Specialty
    , sd.Brands
	, sd.SquareFeet
    , sd.Internet
    , sd.NumberEmployees
from {{source('sales','Store')}} s
left join {{source('person','BusinessEntityAddress')}} bea on s.BusinessEntityID = bea.BusinessEntityID
left join {{source('person','AddressType')}} att on bea.AddressTypeID = att.AddressTypeID
left join {{source('sales','vStoreWithContacts')}} sc on s.BusinessEntityID = sc.BusinessEntityID
left join {{source('sales','vStoreWithDemographics')}} sd on s.BusinessEntityID = sd.BusinessEntityID;