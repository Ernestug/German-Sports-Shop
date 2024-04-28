# German Sports Shop
## This project analyzes the sales records of Sportsphere GmbH, a multinational sports company based in Germany. The project focuses on the best-selling products and brands, with further insights on the performance of various stakeholders involved in the business. The data used for this project was sourced from [Maven Analytics](https://mavenanalytics.io/challenges/maven-northwind-challenge/24), with some modifications carried out to transform the data specifically for the sports domain.

## Project Background

In the dynamic world of sports, Germany stands as a vibrant hub where passion meets precision. Renowned for its rich sporting culture and illustrious history, Germany has long been synonymous with excellence in athletics.

At the heart of this sporting fervor lies Sportsphere GmbH, a multinational sports company headquartered in Germany. Sportsphere GmbH epitomizes the spirit of innovation and dedication that defines German sportsmanship. With a commitment to providing customers with exceptional value and experiences, Sportsphere GmbH has utilized data analytics techniques to identify sales trends, optimize costs, and clearly understand customer preferences. This project highlights the sales analysis of the company in 20222 and 2023, with key insights to propel more sales in the coming year.

[Click to interact with Power BI report](https://app.powerbi.com/view?r=eyJrIjoiZDA5NWNhMGEtMjhhZS00ZGFlLTkzMzMtMzQ2NjdjOTIwMDM2IiwidCI6ImRmODY3OWNkLWE4MGUtNDVkOC05OWFjLWM4M2VkN2ZmOTVhMCJ9)

## Overview of the Data

The original data folder downloaded from Maven Analytics had 7 different CSV files (tables), containing information about a food supplying company. This information was transformed using tools like Excel, SQL, and Power Query; tailoring to fit the data obtainable from a sports retail company. Some of these transformations include:

- Removal of unwanted columns: Some columns were removed such as: (1) "Reports to", "Country", and "City" columns from the Employees table. (2) "Description" column from the Product Categories table (3) "QuantityperUnit", "UnitPrice", and "Discontinued" columns from the Products table (columns for price and quantity were already represented in the orders table) and (4) "Contact Name", "Contact Title", and "City" columns from the Customers table. The removal of these columns were carried out in Microsoft Excel.

- Replacing values (Products/Categories): Using AI and natural language processing from Chat GPT, a new data was generated on products and categories for a sports shop using specific requirements. These data was used to replace the initial product names and categories (food supply/groceries data) from the original data. The replacing of values was carried out using MySQL workbench and the [script](https://github.com/Ernestug/German-Sports-Shop/blob/main/Data%20(CSV%2C%20Scripts)/Sportsphere%20GmbH%20(SQL%20Scripts).sql) have been attached to this repository.

- Replacing values (Date columns): The original data contained date values from July 2013 to May 2015. These date values were transformed using Microsoft Excel. Firstly, dates from 2013 were appended to dates in 2015. Thereafter, 2014 and 2015 were replaced with 2022 and 2023 respectively.

- Merging tables (Products & Categories): The Products and Product Categories tables were merged together to form a new table named "Products". All columns from both tables were duly represented in the new table such as Product ID, Product Name, Category, and Brand (a new column which was obtained from the AI generated data from Chat GPT). This transformation was done using the XLOOKUP function in Excel.

- Merging tables (Orders & Order Details): Using SQL joins, the Orders and Order Details tables were also merged together with all columns from the two tables represented in the new table named as "Orders (joined)". The [SQL script](https://github.com/Ernestug/German-Sports-Shop/blob/main/Data%20(CSV%2C%20Scripts)/Sportsphere%20GmbH%20(SQL%20Scripts).sql) employed in achieveing this has been attached to this repository.

- Creating new table: A new table named as "Brand Logos" was created. This table contains two columns - the name of the brand and the URL of the brand logo.

After all transformations have been done, six tables were imported to begin the analysis and visualization. These tables and their columns are highlighted below:

**Orders Table**
- Order ID: The unique identifier for every order placed.
- Product ID: The ID for the product purchased in different orders.
- Unit Price: The price or amount paid for a product.
- Quantity: The quantity of products purchased.
- Discount: Values representing the percentage of discounts given.
- Customer ID: The ID for every customer who places an order or purchases a product.
- Employee ID: The ID for every employee who attends to or manages an order or purchase.
- Order Date: The date an order was placed.
- Required Date: The date the order is required to be delivered as stated by the customer.
- Shipped Date: The date the order was shipped or delivered.
- Shipping Cost (Freight): The cost of shipping an order.

**Customers Table**
- Customer ID: The unique identifier for every customer.
- Company Name: The name of the company that placed an order.
- Country: The country where the company is based.

**Employees Table**
- Employee ID: The unique identifier for every employee.
- Employee Name: The name of the employee.
- Title: The employee's role or designation.

**Products Table**
- Product ID: The unique identifier for every product.
- Product Name: The name of the product.
- Category: The category which the product falls under.
- Brand: The sports brand that manufactured the product.

**Shippers Table**
- Shipper ID: The unique identifier for every shipper.
- Company Name: The name of the shipper or shipping company.

**Brand Logos**
- Brand: The name of the sports brand.
- Logo URL: The URL of the sports brand logo.

***The CSV files have been included in the repository for this project.***

## Tools and Technologies used

**1. ChatGPT:** ChatGPT was used in creating a sports shop data comprising sports brand, products, and product categories. With the use of prompts tailored to specific needs and requirements from the original data, I was able to utilize artificial intelliegence to create a data that best suits the scope of this project.

**2. MySQL:** MySQL was deployed in replacing values in the Products Table. Using certain SQL scripts, I obtained new values of data from ChatGPT which were used to replace values in the product and categories column of the Products table. Also, this tool was also used in joining the Orders and Order details table to form a new table saved as Orders (joined).

**3. Microsoft Excel:** Microsoft Excel was used at the start of the project to provide an understanding of the data structure and the different columns in the tables. Excel was also utilized in removing unwanted columns before analysis was carried out.

**4. Power BI:** Power BI was used in creating the visualizations and dashboards for this project. Power BI helped in getting quick insights on the sales performance across different angles. Power BI service, a component of Power BI was also utilized in creating a web link that allows interactivity and navigation with the report. In addition, I used Power Query in carrying out major transformations on the dataset across different columns such as removing blank rows and replacing values.

### Project Workflow

A Project Workflow provides a good structure for every data analytics project. It helps to establish a clear roadmap of sequential steps from the initial problem to the final insights. This keeps the project organized and aligned with goals. It also outlines tasks within each project phase, preventing important elements from being overlooked and making the process more efficient. The workflow for this project is shown below:

![](https://github.com/Ernestug/German-Sports-Shop/blob/main/Images/Project%20Workflow.png)

## Project Objective

This project was carried out to uncover key insights from the trend of sales of sports products in 2022 and 2023 and implement actionable steps to boost sales and reduce costs in the coming year. From this project, it will be easy to understand sales trends, pricing patterns, and consumer preferences, which are crucial for the business operations. Insights from this project will be used in making informed decisions regarding inventory, pricing strategies, and targeted marketing efforts.

## Data Collection

The data for this project was collected from Maven Analytics. The original data which comprised data of a food supplying/grocery store was transformed to data for a sports shop with major modifications implemented in the Products table.

## Data Cleaning & Preparation

I began the data cleaning process with Microsoft Excel where I removed unwanted columns before proceeding to SQL to replace values and create joins. The data preparation involved generating a sports shop data from ChatGPT and replacing with the values in the original data. Power Query was also utilized in carrying out some actions like removing blank rows and replacing values. The [M Query Codes](https://github.com/Ernestug/German-Sports-Shop/blob/main/Power%20Query%20Editor%20(M%20Codes).txt) from the Power Query Editor have been attached to this repository. Please note that the Power Query Editor automatically writes/generates these codes based on the steps applied in the editor.

In addition, I created new measures and new columns to provide in-depth insights into the various sales records. Some of the measures and columns include:

- **% MoM Variance:** This measure was created to visualize the month-on-month percentage difference in sales.
- **Net Sales:** This new column was created to calculate the sales from products after discounts have been applied.
- **Unshipped Quantity:** This measure was calculated to obtain the quantity of products that have not been shipped to customers.
- **Previous Month Sales:** This measure was calculated to obtain the sales generated in the previous month.
- **Lead Time:** This measure was calculated using the DATEDIFF DAX function to obtain the difference between the shipped date and order date.

I also created a Calendar Table to provide an extensive hierarchy from the "Date Sold" column - splitting the dates into Year, Month, Quarter, and Day. Click [here](https://github.com/Ernestug/German-Sports-Shop/blob/main/DAX%20Functions.txt) to view the DAX functions used to create the measures, calculated columns, and table.

## Data Model

The Data Model was automatically created in Power BI. This clearly shows the relationship and cardinality between the various tables in this project.



![](https://github.com/Ernestug/German-Sports-Shop/blob/main/Images/Data%20Model.png)



## Data Analysis & Visualization

After I completed the various data cleaning and transformations - getting new columns and measures, I proceeded to begin the analysis and visualization. To ensure easy navigation and adequate understanding of the project, I divided the visualizations into 4 dashboards. These dashboards were used to effectively visualize key insights from this analysis.

Some Key Insights from the data visualization are summarized below:

- **Overview:** The overview section shows that a total of €1.27M was generated in sales from 2155 orders. There was a 5% increase in sales from 2022 to 2023. This was as a result of more units of products sold in 2023. Also, all brands of sports products generated relatively close values in sales, with Puma generating the highest percentage (24%) of sales - €304K and Under Armour generating the lowest value (16%) - €204K.  USA and Germany were the top 2 locations by sales, this could be as a result of the origin of these sports brands. Nike, Under Armour, and New Balance are all American brands; while Puma and Adidas are German brands.



![](https://github.com/Ernestug/German-Sports-Shop/blob/main/Images/Overview.jpg)



- **Time Analysis:** The Time Analysis Dashboard shows that more sales were made in Q1 than any other quarter, having close to 50% more sales in Q2. There was a decline in sales from Q2 to Q3, with a steady increase of 40% from Q3 to Q4. For the daily trend of sales, Tuesday and Wednesday had very low values of €30.3K and €41.3K respectively, compared to other days which had above €200K in sales. The time analysis also provided information on the Lead Time (the time or duration from initiating an order to delivering it to the customers). The maximum Lead Time is 42 days while the average is 9 days.



![](https://github.com/Ernestug/German-Sports-Shop/blob/main/Images/Time%20Analysis.jpg)


- **Products:** 77 products were sold in this analysis, with a total of 51,317 quantities ordered. Products under the Equipment category generated considerably higher values than other categories - amounting to 41.1% of sales made. Balls were rarely sold as they generated only 5% of sales. For the brands, the YoY sales shows a drop in sales for the top 2 sports brands in the world - Adidas and Nike; with Under Armour, Puma, and New Balance showing positive growth and an indication for more procurement. In addition, 4 out of the top 5 products by sales were from Puma, New Balance, and Under Armour. The YoY sales for product categories also showed the highest growth of 29.76% for Apparels. 3 out of the Top 5 products by sales were from this category. This indicates that apparels may provide more sales in the coming year.



![](https://github.com/Ernestug/German-Sports-Shop/blob/main/Images/Products.jpg)



- **Stakeholders:** The stakeholders involved in this analysis include the customers, employees, and shippers. QUICK-Stop, a retail sports firm based in Germany emerged as the top customer by sales, generating close to 10% of the total revenue. For employees, the % distribution of sales by job titles revealed that 71% of sales were completed by Sales Representatives, Sales and Manager and VP Sales had lower values of 15% and 13% respectively. For shippers, United Package emerges in top place with the highest shipping cost and the highest percentage of shipped quantities, followed by Federal Shipping and Speedy Express.



