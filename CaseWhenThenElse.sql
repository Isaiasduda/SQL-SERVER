SELECT 
EnglishProductSubcategoryName
,case
when EnglishProductSubcategoryName = 'Mountain Bikes' then 'bicicleta'
else '0'
end as	'categoria'
  FROM DimProductSubcategory
