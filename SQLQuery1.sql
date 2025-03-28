create database Insurancedb

select * from [dbo].[InsuranceData]

SELECT PolicyNumber, COUNT(*)
FROM [dbo].[InsuranceData]
GROUP BY PolicyNumber
HAVING COUNT(*) > 1;
 
SELECT DISTINCT * 
INTO InsuranceData_Cleaned 
FROM [dbo].[InsuranceData];

DROP TABLE [dbo].[InsuranceData];

EXEC sp_rename 'dbo.InsuranceData_Cleaned', 'InsuranceData';

select * from [dbo].[InsuranceData]