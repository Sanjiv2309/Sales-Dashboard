use AdventureWorksDW2019;

create view DIM_calendar as 
SELECT 
	[DateKey]
      ,[FullDateAlternateKey] as date 
      ,[EnglishDayNameOfWeek] as day_name 
      ,[WeekNumberOfYear] as weeknr
      ,[EnglishMonthName] as month
	  ,LEFT(EnglishMonthName,3) as monthshort
      ,[MonthNumberOfYear] as monthnr
      ,[CalendarQuarter] as Quarter
      ,[CalendarYear] as Year
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where CalendarYear >= 2019;



 select * from DIM_calendar;