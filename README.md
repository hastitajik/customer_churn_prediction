# Customer Churn Prediction (Telco) — SQL + Python

### Context

"Predict behavior to retain customers. You can analyze all relevant customer data and develop focused customer retention programs."  
[IBM Sample Data Sets](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)
### We aim to build a predictive model :
* Input = customer profile (age, contract tenure, services, monthly charges, …)
* Output = probability that the customer will churn soon.

### Content dataset

Each row represents a customer, each column contains customer’s attributes described on the column Metadata.
The raw data contains 7043 rows (customers) and 21 columns (features).

#### The data set includes information about:

* **Customers who left within the last month –** the column is called Churn.
* **Services that each customer has signed up for –** phone, multiple lines, internet, online security, online backup, device protection, tech support, and streaming TV and movies
* **Customer account information –** how long they’ve been a customer, contract, payment method, paperless billing, monthly charges, and total charges.
* **Demographic info about customers –** gender, age range, and if they have partners and dependents.

#### Mini-Storyline :
Telecom companies often lose a portion of their customers (churn), and each lost customer means direct revenue loss. 
We analyzed data from over 7,000 customers and found that short contract tenure, lack of additional services, and higher monthly charges are strongly correlated with churn. 
Using machine learning models, we built a system that predicts a churn probability score for each customer. 
This enables the company to proactively target high-risk customers with offers or support, ultimately improving customer retention and reducing losses.


#### <b> Objectives</b>
I will explore the data and try to answer some questions like:
* What's the percent of Churn Customers and customers that keep in with the active services?
* Is there any patterns in Churn Customers based on the gender?
* Is there any patterns/preference in Churn Customers based on the type of service provided?
* What's the most profitable service types?
* Which features and services are most profitable?
* Many more questions that will arise during the analysis


---

## Project architecture

```mermaid
flowchart TD
    A[Raw Data (CSV)] --> B[Data Cleaning & Preparation]
    B --> C[Exploratory Data Analysis (EDA)]
    C --> D[Modeling]
    D --> E[Evaluation]
    E --> F[Prediction Outputs]
    F --> G[Reports & Medium Article]

```markdown

![Architecture Diagram](reports/figures/architecture.png)



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
│  │  ├─ eda.ipynb
│  │  └─ modeling.ipynb
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

