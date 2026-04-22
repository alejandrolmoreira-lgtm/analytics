# dbt Analytics Project – TPCH (Snowflake)

## Overview

This project builds an end-to-end analytics data model using dbt on Snowflake, based on the TPCH sample dataset.

The objective is to transform raw transactional data into a structured, tested, and business-ready model that supports analysis of revenue, cost, and profitability.

---

## Architecture

The project follows a three-layer dbt architecture:

* **Staging (S1)**
  Cleans and standardizes raw data from `SNOWFLAKE_SAMPLE_DATA`.
  Column names are aligned (e.g. `order_key`, `customer_key`) to ensure consistency across models.

* **Intermediate (S2)**
  Core transformation layer.
  The main model, `int_lineitem_enriched`, combines line items with orders, customers, products, suppliers, and geography.
  Business metrics such as revenue, cost, and profit are defined here.

* **Marts (S3)**
  Final business-facing models structured as a star schema.

---

## Naming Conventions

Keys were standardized across all staging models to enable consistent joins and simplify query logic.

For example:

* `o_orderkey`, `l_orderkey` → `order_key`
* `o_custkey`, `c_custkey` → `customer_key`
* `l_partkey`, `p_partkey` → `part_key`
* `l_suppkey`, `s_suppkey` → `supp_key`

This allowed the use of the `USING` clause in joins instead of explicit `ON` conditions, improving readability and reducing boilerplate SQL.

The approach also ensures consistency across models and makes relationships easier to validate and maintain.

---

## Data Model

### Fact Table

**fact_lineitem**
Grain: one row per order line item

Includes:

* Revenue (gross and net)
* Cost
* Profit
* Discount metrics
* Pricing variance

---

### Dimensions

**dim_customer**
Customer attributes with geographic enrichment (nation and region)

**dim_part**
Product attributes including retail price

**dim_supplier**
Supplier information with geographic context

**dim_date (optional)**
Derived time attributes such as year, month, and week

---

## Business Logic

Revenue is calculated as:

```
net_revenue = extended_price * (1 - discount)
```

Cost is calculated as:

```
total_cost = quantity * supply_cost
```

Profit is derived as:

```
profit = net_revenue - total_cost
```

The model also includes pricing analysis:

```
expected_revenue = retail_price * quantity
price_variance = expected_revenue - gross_revenue
```

---

## Testing

Data quality tests are implemented across all layers:

* **Staging**

  * Not null constraints
  * Uniqueness of primary keys
  * Referential integrity between source tables

* **Intermediate**

  * Grain validation (`lineitem_id`)
  * Completeness of key metrics

* **Marts**

  * Referential integrity between fact and dimensions
  * Primary key validation

---

## Analysis

The project includes a set of analytical queries to validate the model and explore business insights, such as:

* Product profitability
* Customer value
* Pricing performance
* Revenue trends
* Supplier contribution

These queries are defined in the `analysis/` folder and compiled with dbt.

---

## Tech Stack

* dbt (Fusion preview)
* Snowflake
* SQL

---

## Summary

This project demonstrates how to build a structured analytics model from raw data using dbt. It covers data transformation, testing, and business logic definition, resulting in a model that can be used directly for reporting and analysis.

---

## Author

Alejandro López Moreira
22/04/2026