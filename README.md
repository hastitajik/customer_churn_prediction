# Customer Churn Prediction (Telco) — SQL + Python

## Context

"Predict behavior to retain customers. You can analyze all relevant customer data and develop focused customer retention programs." [IBM Sample Data Sets]
[Telco Customer Churn Dataset](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)


## Content dataset

Each row represents a customer, each column contains customer’s attributes described on the column Metadata.
The raw data contains 7043 rows (customers) and 21 columns (features).

### The data set includes information about:

* Customers who left within the last month – the column is called Churn.
* Services that each customer has signed up for – phone, multiple lines, internet, online security, online backup, device protection, tech support, and streaming TV and movies
* Customer account information – how long they’ve been a customer, contract, payment method, paperless billing, monthly charges, and total charges.
* Demographic info about customers – gender, age range, and if they have partners and dependents.


---

## Project architecture

```mermaid
flowchart LR
  A[CSV from Kaggle<br/>data/raw] --> B[SQL Staging<br/>staging.telco_raw]
  B --> C[SQL Clean/View<br/>core.v_telco_ml]
  C --> D[Python EDA<br/>notebooks/01_eda]
  D --> E[Preprocess Pipeline<br/>python/src/data_prep.py]
  E --> F[Model Train & Tune<br/>python/src/train.py]
  F --> G[Evaluate & Reports<br/>python/src/evaluate.py<br/>reports/figures]
  F --> H[Artifacts<br/>models/artifacts/*.pkl]
  H --> I[Inference<br/>python/src/inference.py]
```

```
.
customer_churn_prediction/
├─ data/
│  ├─ raw/                       # CSV اصلی کگل 
│  └─ processed/                 # دیتای تمیز نهایی برای مدل
│
├─ sql/
│  ├─ 00_create_schemas.sql      # ساخت اسکیماها (staging, core)
│  ├─ 01_create_tables.sql       # جداول staging/core
│  ├─ 02_bulk_load_telco.sql     # BULK INSERT/OPENROWSET
│  ├─ 03_profiling_checks.sql    # nulls, cardinality, label ratio
│  └─ 99_views_features.sql      # ویوهای آماده فیچر
│
├─ python/
│  ├─ notebooks/
│  │  ├─ 01_eda.ipynb
│  │  └─ 02_modeling.ipynb
│  └─ src/
│     ├─ __init__.py
│     ├─ data_prep.py            # load/clean/split + ColumnTransformer
│     ├─ train.py                # fit + save model & metrics
│     ├─ evaluate.py             # گزارش متریک‌ها + نمودارها
│     ├─ inference.py            # پیش‌بینی روی ورودی جدید
│     ├─ utils_io.py             # I/O و لاگ‌ها
│     └─ paths.py                # مدیریت مسیرها از config.yaml
│
├─ reports/
│  ├─ figures/                   # pr_curve.png, cm.png, shap.png
│  ├─ summary.pdf                # گزارش یک‌صفحه‌ای
│  └─ medium_assets/             # تصاویر مقاله
│
│
└─ .github/
 
```

