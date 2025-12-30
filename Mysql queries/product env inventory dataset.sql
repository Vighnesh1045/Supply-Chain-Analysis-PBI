CREATE  DATABASE PROD_Env;

use prod_env;

SELECT * FROM  prod_env.`prod env inventory dataset`;

UPDATE prod_env.`prod env inventory dataset`
SET `Product ID` = 7 WHERE `Product ID` = 21;

UPDATE prod_env.`prod env inventory dataset`
SET `Product ID` = 11 WHERE `Product ID` = 22;

SELECT distinct `Product ID` FROM  prod_env.`prod env inventory dataset`;


