use AdventureWorksDW2019
select *
into temp
from DimEmploeyy


select * from temp

select
EmployeeKey,
FirstName,
MiddleName,
LastName,
EndDate,
case when EndDate is null then 'Ativo' else 'Demito' end as 'Status'

from temp
order by EndDate

drop table temp