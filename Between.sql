SELECT 
EmployeeKey

,sum(ExtendedAmount) as 'Venda'
,case
	when sum(ExtendedAmount) < 200000 then 'Ruim'
	when sum(ExtendedAmount) between 200000 and 5000000 then 'Medio'
	when sum(ExtendedAmount) > 500000 then 'Promocao'
	else 'Nao_bateu_meta' 
end as 'Meta'

from FactResellerSales
group by EmployeeKey
order by 2
