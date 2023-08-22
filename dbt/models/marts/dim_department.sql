with emp as (
    select DepartmentID
        , count(EmployeeID) as NumberOfEmployee
    from {{ref('stg_empCurrentDepartment')}}
    group by DepartmentID
)
select d.DepartmentID
	, d.Name
	, d.GroupName
    , NumberOfEmployee
	, d.ModifiedDate 
from {{source('hr', 'Department')}} d
left join emp on d.DepartmentID = emp.DepartmentID