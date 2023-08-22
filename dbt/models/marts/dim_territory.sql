select TerritoryID
	, st.Name as TerritoryName
	, st.CountryRegionCode
	, cr.Name as CountryRegion
	, st."Group"
from {{source('sales','SalesTerritory')}} st
left join {{source('person','CountryRegion')}} cr on st.CountryRegionCode = cr.CountryRegionCode;
