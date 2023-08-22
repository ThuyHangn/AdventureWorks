
select c.CustomerID
    , c.StoreID
    , c.AccountNumber
	, p.PersonType
    , p.Title
    , p.FirstName
    , p.MiddleName
    , p.LastName
	, ea.EmailAddress
    , PhoneNumber
    , pnt.Name as PhoneNumberType
	, p.EmailPromotion
    , pd.BirthDate
    , pd.MaritalStatus
    , pd.YearlyIncome
	, pd.Gender
    , pd.TotalChildren
    , pd.NumberChildrenAtHome
    , pd.Education
	, pd.Occupation
    , pd.HomeOwnerFlag
    , pd.NumberCarsOwned
	, cc.CardType
    , cc.CardNumber
    , cc.ExpMonth
    , cc.ExpYear
	, bea.AddressID
    , att.Name as AddressType
from {{source('sales','Customer')}} c
left join {{source('person','Person')}} p on c.PersonID = p.BusinessEntityID
left join {{source('sales','PersonCreditCard')}} pcd on c.PersonID= pcd.BusinessEntityID
left join {{source('sales','CreditCard')}} cc on pcd.CreditCardID = cc.CreditCardID
left join {{source('sales','vPersonDemographics')}} pd on p.BusinessEntityID = pd.BusinessEntityID
left join {{source('person','BusinessEntityAddress')}} bea on p.BusinessEntityID = bea.BusinessEntityID
left join {{source('person','AddressType')}} att on bea.AddressTypeID = att.AddressTypeID
LEFT JOIN {{source('person','EmailAddress')}} ea ON ea.BusinessEntityID = p.BusinessEntityID
LEFT JOIN {{source('person','PersonPhone')}} pp ON pp.BusinessEntityID = p.BusinessEntityID
LEFT JOIN {{source('person','PhoneNumberType')}} pnt ON pnt.PhoneNumberTypeID = pp.PhoneNumberTypeID