select
    BusinessEntityID
    , sum(Rate) as total_rate
from {{ref("stg_empCurrentRate")}}
group by BusinessEntityID
having sum(Rate) <0