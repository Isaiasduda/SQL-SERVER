select 
OrderQuantity,
SalesOrderNumber,
UnitPrice,
SalesAmount

From FactResellerSales
where OrderQuantity >= 10
order by 1  -- ordena na ordem crescente a coluna 1 




 

