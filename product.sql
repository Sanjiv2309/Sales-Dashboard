/****** Script for SelectTopNRows command from SSMS  ******/

create view DIM_Products as 
SELECT [ProductKey]
      ,[ProductAlternateKey] as ProductItemcode
      ,p.[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] as ProductName
	  ,sub.[EnglishProductSubcategoryName] as Subcategory
	  ,cat.[EnglishProductCategoryName] as Category
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName]
      --,[LargePhoto]
      ,[EnglishDescription]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,
	  isnull (status,'Outdated') as product_status 
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p left join [AdventureWorksDW2019].[dbo].[DimProductSubcategory] as sub 
  on p.ProductSubcategoryKey = sub.ProductSubcategoryKey
  left join [AdventureWorksDW2019].[dbo].[DimProductCategory] as cat on cat.[ProductCategoryKey] = sub.[ProductCategoryKey] 



select * from DIM_Products;