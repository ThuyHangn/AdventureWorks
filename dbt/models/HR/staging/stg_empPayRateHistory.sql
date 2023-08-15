with tbl as(
    select *
    from {{source('hr', 'EmployeePayHistory')}}
)
select *
from tbl