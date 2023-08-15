select
    BusinessEntityID
    , sum(Rate)
from {{ref("stg_empCurrentRate")}}
group by BusinessEntityID
having sum(Rate) <0