use prod_env;

CREATE TABLE new_table as  
select 
a.`Order Date (DD/MM/YYYY)` as `Order_Date_DD_MM_YYYY`,
a.`PRODUCT ID` as `Product_ID`,
a.`Availability`,
a.`Demand`,
b.`Product Name` as `Product_Name`,
b.`Unit Price ($)` as `Unit_Price`
from 
prod_env.`prod env inventory dataset` as a left join prod_env.`products` as b
on a.`Product ID` = b.`Product ID`;
 
