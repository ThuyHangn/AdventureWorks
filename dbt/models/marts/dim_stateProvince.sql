select sp.StateProvinceID
    , sp.StateProvinceCode
    , sp.Name as StateProvince
	, sp.CountryRegionCode
    , cr.Name as CountryRegion
	, sp.TerritoryID
	, sp.ModifiedDate
from {{source('person','StateProvince')}} sp 
left join {{source('person','CountryRegion')}} cr on sp.CountryRegionCode= cr.CountryRegionCode;