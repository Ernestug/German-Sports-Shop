# German Sports Shop
## This project analyzes the sales records of Sportsphere GmbH, a multinational sports company based in Germany. The project focuses on the best-selling products and brands, with further insights on the performance of various stakeholders involved in the business. The data used for this project was sourced from [Maven Analytics](https://mavenanalytics.io/challenges/maven-northwind-challenge/24), with some modifications carried out to transform the data specifically for the sports domain.

## Project Background

In the dynamic world of sports, Germany stands as a vibrant hub where passion meets precision. Renowned for its rich sporting culture and illustrious history, Germany has long been synonymous with excellence in athletics.

At the heart of this sporting fervor lies Sportsphere GmbH, a multinational sports company headquartered in Germany. Sportsphere GmbH epitomizes the spirit of innovation and dedication that defines German sportsmanship. With a commitment to providing customers with exceptional value and experiences, Sportsphere GmbH has utilized data analytics techniques to identify sales trends, optimize costs, and clearly understand customer preferences. This project highlights the sales analysis of the company in 20222 and 2023, with key insights to propel more sales in the coming year.

[Click to interact with Power BI report](https://app.powerbi.com/view?r=eyJrIjoiZDA5NWNhMGEtMjhhZS00ZGFlLTkzMzMtMzQ2NjdjOTIwMDM2IiwidCI6ImRmODY3OWNkLWE4MGUtNDVkOC05OWFjLWM4M2VkN2ZmOTVhMCJ9)

## Overview of the Data

The original data folder downloaded from Maven Analytics had 7 different CSV files (tables), containing information about a food supplying company. This information was transformed using tools like Excel, SQL, and Power Query; tailoring to fit the data obtainable from a sports retail company. Some of these transformations include:

- Removal of unwanted columns: Some columns were removed such as "Reports to" & "Country" column from the Employees table, "Description" column from the Product Categories table, "QuantityperUnit", "UnitPrice" & "Discontinued" columns from the Products table (columns for price and quantity were already represented in the orders table), and "Contact Name", "Contact Title" & "City" columns from the Customers table. The removal of these columns were carried out in Microsoft Excel.
- Replacing values (Products/Categories): Using AI and natural language processing from Chat GPT, a new data was generated on products and categories for a sports shop using specific requirements. These data was used to replace the initial product names and categories (food supply/groceries data) from the original data. The replacing of values was carried out using MySQL workbench and the script have been attached to this repository.
- Replacing values (Date columns): The original data contained date values from July 2013 to May 2015. These date values were transformed using Microsoft Excel. Firstly, dates from 2013 were appended to dates in 2015. Thereafter, 2014 and 2015 were replaced with 2022 and 2023 respectively.
- Merging tables (Products & Categories): The Products and Product Categories tables were merged together to form a new table named "Products". All columns from both tables were duly represented in the new table such as Product ID, Product Name, Category, and Brand (a new column which was obtained from the AI generated data from Chat GPT). This transformation was done using the XLOOKUP function in Excel.
- Merging tables (Orders & Order Details): Using SQL joins, the Orders and Order Details tables were also merged together with all columns from the two tables represented in the new table named as "Orders (joined)". The SQL script employed in achieveing this has been attached to this repository.
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
