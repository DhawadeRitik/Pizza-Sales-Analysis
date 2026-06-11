# 🍕 Pizza Sales Performance Dashboard

A comprehensive, interactive Power BI data analysis solution designed to monitor, track, and optimize pizza sales performance. This end-to-end project ingests transactional data, performs SQL-driven and DAX-powered data transformations, and delivers actionable business insights through an intuitive executive dashboard.

---

## 📌 Project Overview
In the highly competitive Quick Service Restaurant (QSR) sector, understanding sales trends, customer preferences, and product mix performance is critical for revenue optimization and inventory control. 

This project provides a professional **Pizza Sales Performance Dashboard** that captures key performance indicators (KPIs) including total orders, total revenue, average order value, sales quantities, and average pizzas per order. It tracks operational trends across months and days of the week, decomposes revenue by category and size, and highlights top-performing and underperforming products to drive data-backed decision-making.

---

## 📊 Key Insights & Dashboard Features

### 🚀 1. Executive Summary KPIs
* **Total Orders:** **1,845** distinct transactions captured during the reporting cycle.
* **Total Revenue:** **$69.78K**, representing total gross sales generated.
* **Average Order Value (AOV):** **$37.82**, indicating average customer spend per transaction.
* **Sold Quantity:** **4K** total pizzas successfully sold.
* **Average Pizza Per Order:** **2.29**, showing consistent multi-item purchasing patterns.

### 🏆 2. Product Performance (Best & Worst)
* **Top Pizza by Revenue:** The Barbecue Chicken Pizza (**$3,753.50**)
* **Top Pizza by Total Orders:** The Pepperoni Pizza (**225.00**)
* **Top Pizza by Sold Quantity:** The Pepperoni Pizza (**239**)
* **Worst Pizza by Revenue:** The Brie Carre Pizza (**$827.75**)
* **Worst Pizza by Total Orders:** The Brie Carre Pizza (**34.00**)
* **Worst Pizza by Sold Quantity:** The Brie Carre Pizza (**35.00**)

### 📈 3. Temporal Trend Analysis
* **Monthly Total Revenue Trend:** Tracks monthly data highlights showing clear seasonality, peaking significantly in **July ($72.6K)** and seeing lower performance in **February ($65.2K)** and **September/October ($64.2K - $64.0K)**.
* **Daily Total Revenue Trend:** Breaks down weekly performance, identifying **Wednesday ($12.1K)** and **Thursday ($12.1K)** as peak operational periods, while **Saturday ($7.2K)** represents the weekly low point.

### 🍕 4. Product Mix & Segmentation
* **Sales Distribution by Category:** Analyzes percentage sales contribution across major categories (Classic: 2.28%, Supreme: 2.19%, Veggie: 2.09%, Chicken: 1.98%).
* **Sales Distribution by Pizza Size:** Evaluates size preferences, showing that **L (3.96%)** and **M (2.56%)** sizes dominate sales, while **XL (0.16%)** and **XXL (0.01%)** represent niche segments.
* **Pizza Sold by Size & Category:** A stacked column chart visualizing the intersections of dimensions (e.g., strong volume for Classic in Large, Supreme in Medium).
* **Revenue by Pizza Name:** An interactive Treemap that visually blocks and ranks each pizza's total revenue contribution to spot individual product impact.

### 🛠️ 5. Advanced Dashboard Functionality
* **Dynamic Time Slicers:** Interactive vertical month filters (Jan–Dec) allowing quick chronological deep-dives.
* **Category & Size Slicers:** Interactive multi-select checkboxes for instantaneous custom slicing across product types and sizes.
* **KPI Dropdown Slicers:** Built-in dynamic metric toggle allowing users to switch baseline parameters across charts.
* **Clear All Filter Mechanism:** A dedicated "Remove Filters" macro button for instant view resetting.

---

## 🛠️ Tech Stack & Skills Demonstrated
* **Data Visualization & BI:** Power BI Desktop
* **Data Transformation:** Power Query (M Language) for ETL pipelines, handling data types, formatting currency, and standardizing categories.
* **Data Modeling:** Star Schema design with optimized Fact and Dimension relationships.
* **Analytical Calculations:** Advanced DAX (Data Analysis Expressions) for creating robust measures (Total Revenue, AOV, Order Counts, Product Rankings).
* **UI/UX Design:** High-contrast professional layouts using precise hex code styling, clean data typography, icon integrations, and logical visual hierarchies.

---

## 💡 Business Recommendations Driven by Dashboard
1. **Inventory Planning for Peaks:** Align supplier orders and kitchen scheduling to accommodate high mid-week demand (Wed/Thu) and seasonal summer surges (July).
2. **Product Optimization:** Rethink or re-engineer the recipe, marketing, or pricing for **The Brie Carre Pizza** given its position as the lowest performer in sales, revenue, and order counts. Conversely, promote **The Pepperoni Pizza** via bundling strategies to boost quantity further.
3. **Size Optimization:** Rationalize menu space by reducing emphasis on **XL** and **XXL** sizes, concentrating marketing and operations on **Large (L)** and **Medium (M)** configurations.

## Screenshot : 
<img width="1250" height="692" alt="image" src="https://github.com/user-attachments/assets/94063011-e49d-40fd-bfdf-ce2e88893b95" />

