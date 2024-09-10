select 
year(OrderDate) ano
,count(case when ExtendedAmount <3000 then 1 end) venda_baixa
,count(case when ExtendedAmount >=3000 then 1 end) venda_alta

from FactResellerSales
group by year(OrderDate)
order by 1


select 
month(OrderDate) ano
,count(case when ExtendedAmount <3000 then 1 end) venda_baixa
,count(case when ExtendedAmount >=3000 then 1 end) venda_alta

from FactResellerSales
where year( OrderDate) = 2011
group by month(OrderDate)
order by 1