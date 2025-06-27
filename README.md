# -Aggregate-Functions-and-Grouping
Aggregate functions are used to perform calculations on a set of values and return a single summarized result. They are commonly used in data analysis to get insights from large datasets.

Common Aggregate Functions:
SUM() – Calculates the total sum of a numeric column.

COUNT() – Counts the number of rows or non-null values.

AVG() – Computes the average (mean) of a numeric column.

MIN() – Finds the minimum value in a column.

MAX() – Finds the maximum value in a column.

📌 GROUP BY Clause
The GROUP BY clause is used to arrange identical data into groups. Once grouped, aggregate functions can be applied to each group to produce summary results.

For example, you might group sales data by product category, then calculate the total sales per category.

GROUP BY is placed after the WHERE clause and before the ORDER BY clause in a SQL query.

📌 HAVING Clause
The HAVING clause is used to filter the results of groups created by the GROUP BY clause.

Unlike WHERE (which filters rows before grouping), HAVING filters after the data has been grouped.

It is typically used when you want to filter on an aggregate value (e.g., show only those categories where total sales exceed 50,000).

✅ Use Case in Real-World Scenarios
Sales Reporting: Calculate total sales, average price, and number of transactions per product or region.

Attendance Management: Count how many days each student was present.

Inventory Control: Find the highest or lowest stock per product type.

Customer Analysis: Determine the number of orders placed by each customer.

🎯 Outcome / Purpose
By using aggregate functions with grouping:

You can summarize large datasets.

Extract insights by analyzing trends, totals, and averages.

Filter and refine data to focus on important metrics.

