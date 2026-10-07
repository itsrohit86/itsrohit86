# SQL Portfolio Review

## Current Assessment

This project is a strong portfolio foundation because the question set is business-focused and increases in difficulty.

The supplied SQL contains 25 numbered topics. Implementations are present for 1–16 and 18–25; question 17 is currently a placeholder. The separate question bank extends the roadmap to question 40.

## Strong Parts

- Multi-table JOIN practice across customers, orders, order_details, pizzas, and pizza_types.
- KPI thinking: revenue, orders, customers, quantity and AOV.
- Window-function exposure: DENSE_RANK, LAG and NTILE.
- Customer analytics including RFM-style segmentation and lifetime analysis.
- Roadmap includes retention, cohort, Pareto, product dependency and executive KPI work.

## Important Refinements Before Calling It Finished

### 1. Total Revenue
Question 1 is labelled as total revenue, but the current SQL returns revenue at the order-line level instead of one total revenue number.

### 2. Customer Frequency Thresholds
Question 14 uses fixed thresholds for customer classes. Validate them against the actual order distribution.

### 3. New vs Returning Logic
Question 16 classifies customers using monthly order count. A stronger definition should use each customer's first-ever order date.

### 4. Month-over-Month Revenue
Question 18 uses LAG without an explicit chronological ORDER BY in the window. The month is also formatted text rather than a date key.

### 5. Month-over-Month Order Growth
Question 19's displayed percentage field divides by 100. Validate the denominator against the previous period.

### 6. Cumulative Revenue
Question 20 adds revenue to the previous day's revenue. That is not a full running cumulative total.

### 7. Rolling 7-Day Revenue
Question 21 is close to a 7-row rolling window. The final version should decide how missing calendar dates are handled.

### 8. Category Ranking Direction
Questions 22 and 23 use ascending revenue inside DENSE_RANK. For a top-revenue ranking, descending order should be validated.

### 9. Time Between Orders
Question 25 uses direct date subtraction. Use the date-difference function appropriate to the chosen SQL dialect.

### 10. SQL Dialect Consistency
The analysis uses MySQL-style functions such as MONTH, DAYNAME, DATE_FORMAT and DATEDIFF. The supplied database dump is PostgreSQL-format. Choose one dialect and make the setup instructions match it.

## Recommended Completion Order

1. Fix and validate Questions 1, 14, 16, 18, 19, 20, 22, 23 and 25.
2. Add Question 17 retention analysis.
3. Build Questions 26–40.
4. Save clean query-result CSVs or screenshots.
5. Add an insight and recommendation for each major analysis.
6. Build the executive KPI query and Power BI dashboard.

## Recruiter Presentation Standard

**Question → SQL → Result → Insight → Recommendation**

That makes the work read like practical analyst work instead of a collection of SQL exercises.
