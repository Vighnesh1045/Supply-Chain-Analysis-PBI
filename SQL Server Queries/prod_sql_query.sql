CREATE DATABASE PROD_Env

USE PROD_Env

SELECT * FROM [dbo].[Products] order by Product_ID

SELECT * FROM [dbo].[Prod+Env+Inventory+Dataset]

select DISTINCT PRODUCT_ID from [dbo].[Prod+Env+Inventory+Dataset] 
WHERE PRODUCT_ID = '' OR PRODUCT_ID IS NULL

UPDATE [dbo].[Prod+Env+Inventory+Dataset]
SET Product_ID = 7 WHERE Product_ID = 21

UPDATE [dbo].[Prod+Env+Inventory+Dataset]
SET Product_ID = 11 WHERE Product_ID = 22


select * into new_table from (
SELECT  a.Order_Date_DD_MM_YYYY,a.Product_ID,a.Availability,a.Demand,
b.Product_Name,b.Unit_Price
FROM [dbo].[Prod+Env+Inventory+Dataset] as a left join [dbo].[Products] as b 
on a.Product_ID = b.Product_ID
) x

select * from new_table