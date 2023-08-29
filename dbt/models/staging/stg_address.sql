SELECT AddressID
      ,AddressLine1
      ,AddressLine2
      ,City
      ,StateProvinceID
      ,PostalCode
      ,ModifiedDate
FROM {{source('person', 'Address')}}