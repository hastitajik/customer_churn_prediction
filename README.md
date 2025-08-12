
# Home Energy Analytics — کاهش قبض برق با تحلیل داده‌


> تحلیل و پیش‌بینی مصرف برق خانگی با SQL + Python + Power BI

---

- **مسئله:** قبض برق خانگی بالاست، الگوی مصرف شفاف نیست.
- **راه‌حل:** تحلیل سری زمانی + اینسایت عملی + پیش‌بینی کوتاه‌مدت.
- **فرضیه:** با شناسایی ساعات پیک و رفتارهای فصلی می‌توان هزینه را کاهش داد. (زمان‌بندی مصرف، بهینه‌سازی دستگاه‌ها، آگاهی‌بخشی)

markdown
# 🏠 Energy Usage Optimization — 30% Bill Reduction via Data Analytics

## Overview
Analyze household electricity consumption to identify peak usage patterns, estimate costs, and simulate scenarios to reduce bills by up to **30%** using SQL Server, Python, and Power BI.

## Project Structure
energy-optimization/
├─ data/
│  ├─ raw/
│  ├─ processed/
├─ sql/
│  ├─ staging/
│  ├─ warehouse/
│  ├─ views/
├─ src/
│  ├─ config.yaml
│  ├─ features.py
│  ├─ scenarios.py
├─ notebooks/
│  ├─ 01\_eda.ipynb
├─ reports/
│  ├─ figures/
│  ├─ assumptions.md
├─ powerbi/
│  └─ dashboard.pbix
├─ README.md


## Tools & Technologies
- SQL Server (SSMS)
- Python (PyCharm)
- Power BI
- GitHub

## Workflow
1. Data ingestion & staging in SQL
2. Data modeling in SQL
3. Feature engineering & scenario simulation in Python
4. Visualization in Power BI

## Data Source
- Dataset: [Link to dataset]
- Columns: timestamp, household_id, kWh, device/channel usage, tariff (if available)

## Scenarios
1. Baseload reduction
2. Peak-to-off-peak shifting
3. Peak shaving

## Getting Started
### Prerequisites
- SQL Server & SSMS
- Python 3.9+
- Power BI Desktop

## Execution

1. Place dataset in `data/raw/`
2. Run SQL scripts (staging → warehouse → views)
3. Run Python scripts (features, scenarios)
4. Open Power BI file and refresh connections
5. Explore scenarios with What-If sliders

## License

Educational and portfolio use only.

## Author

Your Name — [LinkedIn]([https://www.linkedin.com/](https://www.linkedin.com/in/hasti-tajik-b93b1b244)) | [Medium]([https://medium.com/](https://medium.com/me/settings/account))



## معماری
```mermaid
flowchart LR
A[Source CSV/Kaggle] --> B[(PostgreSQL)]
B --> C[Python ETL & EDA]
C --> D[Model Training & Forecasts]
D --> B
B --> E[Power BI Dashboards]


