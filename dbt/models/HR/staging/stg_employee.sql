with employee as(
    select *
    from {{source("hr", "Employee")}}
),
department as(
    select *
    from {{source("hr", "Department")}}
),
dehistory as(
    select *
    from {{source("hr", "EmployeeDepartmentHistory")}}
),
person as(
    select *
    from {{source("person", "Person")}}
),
rate as(
    select *
    from {{ref('stg_empCurrentRate')}}
)
Select 
	e.BusinessEntityID
	, p.FirstName
	, p.MiddleName
	, p.LastName
	, e.BirthDate
	, e.MaritalStatus
	, e.Gender
	, e.VacationHours
	, e.SickLeaveHours
	, e.CurrentFlag
	, e.JobTitle
	, d.Name as Department
	, d.GroupName as GroupDepartment
    , r.Rate
	, r.PayFrequency
	, r.RateChangeDate
	, edh.StartDate
from employee e
left join dehistory edh on e.BusinessEntityID= edh.BusinessEntityID
left join department d on edh.DepartmentID = d.DepartmentID
left join person p on e.BusinessEntityID= p.BusinessEntityID
left join rate r on e.BusinessEntityID= r.BusinessEntityID
where edh.EndDate is null
