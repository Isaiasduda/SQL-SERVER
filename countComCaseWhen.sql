SELECT 
SalesOrderNumber as 'Ordem_venda'
--ExtendedAmount 
,count(case when ExtendedAmount <3000 then 1 end) as 'Venda Baixa'
,count(case when ExtendedAmount >= 3000 then 1 end) 'Venda Alta'



from FactResellerSales
group by SalesOrderNumber

