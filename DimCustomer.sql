/****** Script for SelectTopNRows command from SSMS  ******/

create view DIM_Customer as
SELECT [CustomerKey]
		,[City]
      --,c.[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName]
      --,[MiddleName]
      ,[LastName]
	  ,c.FirstName + ' ' +LastName as [full Name]
      --,[NameStyle]
      ,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      --,[Gender]
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
	  ,case when gender = 'M' then 'Male'
	  when Gender = 'F' then 'Female' end as [Gender]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      ,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase]
      --,[CommuteDistance]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c left join [DimGeography] as d on c.[GeographyKey] = d.GeographyKey

  select * from DIM_Customer;