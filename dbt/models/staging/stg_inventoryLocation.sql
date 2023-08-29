select LocationID
	, Name
	, CostRate
	, Availability
	, ModifiedDate
from {{source('prod', 'Location')}}