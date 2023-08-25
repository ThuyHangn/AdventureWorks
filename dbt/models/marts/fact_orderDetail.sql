select *
from {{source('sales', 'SalesOrderDetail')}}