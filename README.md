# Coding-Practical
This repository contains hands-on SQL practical exercises completed as part of the BrightLearn / BrightLight Data Analytics Program. Each practical focuses on applying SQL concepts using Snowflake with real datasets. The goal is to strengthen understanding of data retrieval, manipulation, and relationship management through SQL queries.
<h1>🧩Practicals</h1>  

<h2>💻 Practical 01 — SQL Fundamentals (Snowflake Basic SQL Syntax)</h2>  

Dataset Used: retail_sales_dataset.csv

<h3>Objective:</h3>  
To build a strong foundation in SQL by practicing essential syntax and commands for querying and analyzing retail data.

Key Concepts Covered:

- SELECT Statements: Retrieving all or specific columns

- DISTINCT: Removing duplicate values

- WHERE Clause: Filtering rows with logical conditions (AND, OR, BETWEEN, NOT)

- Aggregate Functions: Using COUNT(), AVG(), SUM(), MIN(), MAX()

- GROUP BY: Summarizing data per category

- HAVING: Filtering grouped results

- CASE Statements: Creating conditional logic such as:

- Categorizing spending levels (High vs Low)

- Creating customer Age Groups (Youth, Adult, Senior)

<h2>🔗 Practical 02 — SQL Fundamentals (SQL JOINS)</h2>

Datasets Used:

- orders_large.csv

- customers_large.csv

- products_large.csv

<h3> Objective:</h3>  
To understand and apply different types of SQL JOINs for combining data across multiple tables in a relational database.

Key Concepts Covered:

- INNER JOIN: Combining related records that exist in both tables

- LEFT JOIN: Including all records from one table even when no match exists

- RIGHT JOIN: Returning all records from the right table

- FULL OUTER JOIN: Showing all records from both sides, including unmatched ones

- Counting product orders per item using GROUP BY

- Handling NULL values from missing relationships

- Using table aliases for improved query readability

- Practical Scenarios:

- Linking orders to customers and products

- Identifying customers who placed no orders

- Counting total orders per product

- Displaying full relationship overviews between customers, products, and orders
