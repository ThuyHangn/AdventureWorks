with emp (
    select DepartmentID
        , count(EmployeeID) as NumberOfEmployee
    from ref('stg_empCurrentDepartment')
    group by DepartmentID
)

select DepartmentID
	, Name
	, GroupName
    , NumberOfEmployee
	, ModifiedDate 
from {{source('hr', 'Department')}} d
left join emp on d.DepartmentID = emp.DepartmentID;