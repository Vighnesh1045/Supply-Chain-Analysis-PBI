CREATE DATABASE test_env


use test_env

select * from[dbo].[Products]

select * from[dbo].[Test+Environment+Inventory+Dataset]

select * into new_table from (
select a.Order_Date_DD_MM_YYYY,a.Product_ID,a.Availability,a.Demand,b.Product_Name,b.Unit_Price
from[dbo].[Test+Environment+Inventory+Dataset] as a 
left join [dbo].[Products] as b on a.product_id = b.product_id) x

select * from new_table



use PROD_Env