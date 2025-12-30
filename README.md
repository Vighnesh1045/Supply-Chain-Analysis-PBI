# PROD PBI Report: Supply Chain & Business Optimization
## Problem Statement
The business currently lacks a centralized system to monitor the gap between product demand and inventory availability. This lack of visibility has led to significant supply shortages, resulting in substantial financial losses and missed profit opportunities. The objective of this project was to engineer a robust data pipeline—migrating from a test environment to a production MySQL database—to provide stakeholders with real-time insights into supply chain efficiency and daily financial risks.

## Steps Followed
### 1. Environment Setup & Data Preparation
- Server Installation: Installed MySQL Server and MySQL Workbench to prepare the production data environment.

- Data Exploration: Analyzed the Test Environment Data to understand requirements before building the reporting architecture.

- SQL Staging: Imported inventory datasets into SQL Server and applied Left Join operations to prepare a unified dataset for initial reporting.

### 2. Dashboard Development & DAX Modeling

- Page 1 KPIs: Created DAX measures for Average Demand, Average Availability, and Total Shortage to track supply health.


- Page 2 KPIs: Developed financial measures for Total Profit, Total Loss, and Average Daily Loss to quantify the impact of shortages.


- Visual Design: Designed high-fidelity dashboard visuals for Business Optimization and data-driven decision-making.


### 3. Production Migration & MySQL Integration
- Database Transition: Imported the production-grade dataset into the SQL Server Production Environment and performed Data Cleaning using SQL.

- MySQL Migration: Installed the MySQL Connector and migrated the cleaned data to the MySQL Database.

- Advanced Querying: Developed equivalent SQL code in MySQL Workbench to populate new reporting tables.

- Source Switching: Leveraged the Advanced Editor in Power Query to redirect the Power BI report from SQL Server to the final MySQL Database.

- Validation: Performed final Data Validation and published the report to the MySQL Database Workspace.

## Technical Stack
- Databases: MySQL, SQL Server

- Tools: MySQL Workbench, Power BI Desktop (Power Query & DAX)

- Connectivity: MySQL Connector

## DAX Implementation & Formulas
### Calculated Column
1. Loss/Profit:
Code snippet

    Loss//Profit = 'Demand/Availability Data'[Availability] - 'Demand/Availability Data [Demand]

2. DAX Measures
- Total Availability: SUM('Demand/Availability Data'[Availability])

- Total Demand: SUM('Demand/Availability Data'[Demand])

- Total Number of Days: DISTINCTCOUNT('Demand/Availability Data'[Order_Date_DD_MM_YYYY])

- Total Supply Shortage: [Total Demand] - [Total Availability]

- Avg Demand per Day: DIVIDE([Total Demand], [Total Number of Days])

- Avg Availability per Day: DIVIDE([Total Availability], [Total Number_of Days])

- Total Profit:

Code snippet

    SUMX(FILTER('Demand/Availability Data''Demand/Availability Data'[Loss//Profit] > 0), 'Demand/   Availability Data'[Loss//Profit] * 'Demand/Availability Data'[Unit_Price])
Total Loss:

Code snippet

    SUMX(FILTER('Demand/Availability Data''Demand/Availability Data'[Loss//Profit] < 0), 'Demand/Availability Data'[Loss//Profit] * 'Demand/Availability Data'[Unit_Price]) * -1
    Avg Daily Loss: DIVIDE([Total Loss], [Total Number of Days])

## Business Insights
Analysis of the dashboard reveals critical supply chain imbalances and their financial consequences:

### Supply & Demand Analysis

- Inventory Gap: There is a stark disparity between the Average Demand per Day (151.27) and the Average Availability Per Day (76.81).




- Volume Shortage: The system identifies a Total Supply Shortage of 61K units, indicating that current stock levels are failing to meet market demand.


### Financial Impact

- Profitability: Despite operational hurdles, the business has maintained a Total Profit of 301K.




- Revenue Leakage: The supply gap has resulted in a staggering Total Loss of 8M.



- Operational Risk: The business is losing an average of 9.25K daily, highlighting the urgent need for optimized inventory procurement.


