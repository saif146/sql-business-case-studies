# Advanced SQL Business Case Studies

## Overview

This repository contains advanced SQL projects and business case studies solved using MySQL.

The projects are based on:

- Sakila Database
- Employees Database

The goal of these projects is to practice real-world business analytics problems commonly asked in Data Analyst and SQL interviews.

---

# Skills Demonstrated

## SQL Concepts

- INNER JOIN
- LEFT JOIN
- SELF JOIN
- GROUP BY
- HAVING
- CASE WHEN
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- Aggregate Functions
- Correlated Subqueries
- Date Functions
- String Functions
- Query Optimization
- Indexing
- Ranking Functions

---

# Business Problems Solved

## Sakila Dataset Analysis

### Customer Analytics
- Top customers by revenue
- Repeat customer analysis
- Customer segmentation
- Customer retention analysis

### Revenue Analytics
- Monthly revenue trends
- Store performance comparison
- Revenue contribution analysis
- Peak rental hour analysis

### Movie Analytics
- Most rented movie categories
- Popular films analysis
- Recommendation-style queries

---

## Employees Dataset Analysis

### HR Analytics
- Salary analysis
- Department performance
- Hiring trends
- Employee tenure analysis
- Gender salary gap analysis
- Promotion analysis

### Advanced Analytics
- Running salary averages
- Salary percentile ranking
- Attrition analysis
- Salary growth analysis

---

# Project Structure

```bash
sql-business-case-studies/
│
├── sakila_analysis/
│   ├── customer_analysis.sql
│   ├── revenue_analysis.sql
│   ├── category_analysis.sql
│   └── advanced_queries.sql
│
├── employee_analysis/
│   ├── salary_analysis.sql
│   ├── tenure_analysis.sql
│   ├── attrition_analysis.sql
│   └── window_functions.sql
│
├── optimization/
│   ├── indexing_examples.sql
│   ├── explain_plan.sql
│   └── query_optimization.sql
│
└── README.md
```

---

# Sample SQL Topics

## Window Functions

```sql
SELECT
    employee_id,
    salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS salary_rank
FROM employees;
```

---

## Customer Segmentation

```sql
CASE
    WHEN total_spent >= 200 THEN 'Platinum'
    WHEN total_spent >= 100 THEN 'Gold'
    ELSE 'Silver'
END AS customer_segment
```

---

## Revenue Trend Analysis

```sql
SELECT
    YEAR(payment_date) AS year,
    MONTH(payment_date) AS month,
    SUM(amount) AS revenue
FROM payment
GROUP BY year, month;
```

---

# Query Optimization Techniques

- Using Indexes
- EXPLAIN Statement
- Optimizing JOINs
- Reducing Subquery Cost
- Efficient Filtering
- Window Function Optimization

---

# Tools Used

- MySQL
- MySQL Workbench
- GitHub

---

# Learning Outcome

These projects helped strengthen my understanding of:

- Writing complex SQL queries
- Solving business problems using SQL
- Query optimization techniques
- Analytical thinking
- Real-world data analysis workflows

---

# Author

MD. SAIFUL ISLAM

---

# Connect With Me

## GitHub
https://github.com/saif146

## LinkedIn
LinkedIn profile link here
