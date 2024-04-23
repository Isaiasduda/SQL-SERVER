SELECT 
FirstName AS Nome,
MiddleName as 'Nome do meio',
LastName as 'Ultimo nome',
AddressLine1 as Endereco1,
AddressLine2 as Endereco2

FROM DBO.DimCustomer
WHERE AddressLine2 IS NOT NULL
AND 
MiddleName IS NOT NULL