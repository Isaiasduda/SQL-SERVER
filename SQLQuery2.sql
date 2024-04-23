select SalesAmount
from FactResellerSales

where SalesAmount between 1000 and 5000
order by SalesAmount

select * 
from DimEmployee
WHERE HireDate BETWEEN '2008/01/01' AND '2010/01/01'
ORDER BY HireDate
