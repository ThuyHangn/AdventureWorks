select e.BusinessEntityID as EmployeeID
	, p.FirstName
	, p.MiddleName
	, p.LastName
	, e.MaritalStatus
	, e.Gender
	, e.BirthDate
	, bea.AddressID
	, att.Name as AddressType
	, e.JobTitle
	, d.DepartmentID
	, e.OrganizationNode
	, e.OrganizationLevel
	, e.NationalIDNumber
	, e.LoginID
	, e.ModifiedDate
from {{source('hr', 'Employee')}} e
left join {{ref('stg_empCurrentDepartment')}} d on e.BusinessEntityID = d.BusinessEntityID
left join {{source('person','Person')}} p on e.BusinessEntityID = p.BusinessEntityID
left join {{source('person', 'BusinessEntity')}} be on p.BusinessEntityID = be.BusinessEntityID
left join {{source('person', 'BusinessEntityAddress')}} bea on be.BusinessEntityID = bea.BusinessEntityID
left join {{source('person', 'AddressType')}} att on bea.AddressTypeID = att.AddressTypeID;