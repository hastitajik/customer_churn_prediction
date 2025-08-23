
# Home Energy Analytics — کاهش قبض برق با تحلیل داده‌


> تحلیل و پیش‌بینی مصرف برق خانگی با SQL + Python + Power BI
> 

پاکسازی داده‌ها و ساخت یک دیتابیس تمیز (SQL Server)

تحلیل الگوها و شبیه‌سازی سناریوهای کاهش مصرف (Python)

ساخت داشبورد مدیریتی با قابلیت تغییر پارامترها و دیدن اثر روی قبض برق (Power BI)





## معماری
```mermaid
flowchart LR
A[Source CSV/Kaggle] --> B[(PostgreSQL)]
B --> C[Python ETL & EDA]
C --> D[Model Training & Forecasts]
D --> B
B --> E[Power BI Dashboards]
```

```bash
energy-optimization/
├─ data/
│  ├─ raw/           # فایل خام مصرف انرژی
│  ├─ processed/     # خروجی‌های تمیز SQL/Python
├─ sql/
│  ├─ staging/       # کوئری‌های استیجینگ
│  ├─ warehouse/     # مدل ستاره‌ای
│  ├─ views/         # KPI Views
├─ python/
│  ├─ config.yaml    # مسیرها، پارامترها، تعرفه‌ها
│  ├─ features.py    # ساخت فیچرها
│  ├─ scenarios.py   # سناریوسازی کاهش مصرف
├─ notebooks/
│  ├─ 01_eda.ipynb   # تحلیل اکتشافی
├─ reports/
│  ├─ figures/       # نمودارها برای مقاله Medium
├─ powerbi/
│  └─ dashboard.pbix
├─ README.md
```

```
.
customer_churn_prediction/
├─ data/
│  ├─ raw/                       # CSV اصلی کگل (فقط read-only داخل گیت)
│  ├─ interim/                   # خروجی‌های میانی پاک‌پذیر
│  └─ processed/                 # دیتای تمیز نهایی برای مدل
│
├─ sql/
│  ├─ 00_create_schemas.sql      # ساخت اسکیماها (staging, core)
│  ├─ 01_create_tables.sql       # جداول staging/core
│  ├─ 02_bulk_load_telco.sql     # BULK INSERT/OPENROWSET
│  ├─ 03_profiling_checks.sql    # nulls, cardinality, label ratio
│  └─ 99_views_features.sql      # (اختیاری) ویوهای آماده فیچر
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
├─ models/
│  ├─ artifacts/                 # pipeline.pkl, encoder.pkl, best_model.pkl
│  └─ reports.json               # متریک‌ها/هایپرها (ماشین‌خوان)
│
├─ reports/
│  ├─ figures/                   # pr_curve.png, cm.png, shap.png
│  ├─ summary.pdf                # گزارش یک‌صفحه‌ای
│  └─ medium_assets/             # تصاویر مقاله
│
├─ scripts/
│  ├─ run_all.bat                # برای ویندوز
│  └─ run_all.sh                 # برای bash
│
├─ tests/
│  ├─ test_data_prep.py          # تست حداقلی روی shape/nulls
│  └─ test_train.py              # smoke-test روی یک اساب‌ست
│
└─ .github/
 
```

