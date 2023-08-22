
select BusinessEntityID as EmployeeID
	, DepartmentID
	, ShiftID
	, StartDate
	, ModifiedDate
from {{source('hr', 'EmployeeDepartmentHistory')}} 
where EndDate is null