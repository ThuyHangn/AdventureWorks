with payrate as(
    Select *
        , row_number() over(partition by BusinessEntityID order by RateChangeDate DESC) as ro 
    from {{source("hr", "EmployPayRate")}}
)
Select
    BusinessEntityID
	, Rate
	, PayFrequency
	, RateChangeDate
From payrate