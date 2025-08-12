
# Home Energy Analytics — کاهش قبض برق با تحلیل داده‌


> تحلیل و پیش‌بینی مصرف برق خانگی با SQL + Python + Power BI

---

- **مسئله:** قبض برق خانگی بالاست، الگوی مصرف شفاف نیست.
- **راه‌حل:** تحلیل سری زمانی + اینسایت عملی + پیش‌بینی کوتاه‌مدت.
- **فرضیه:** با شناسایی ساعات پیک و رفتارهای فصلی می‌توان هزینه را کاهش داد. (زمان‌بندی مصرف، بهینه‌سازی دستگاه‌ها، آگاهی‌بخشی)


---
حق داری 😄
چون وسطش خواستم هم توضیح متنی بدم هم ساختار رو، ولی اگه هدفت اینه که کپی‌ـپیست مستقیم توی `README.md` کنی و تمیز باشه، باید **کلش رو Markdown کامل** بدم که مستقیم تو گیت بخوابه و استایلش حفظ بشه.

الان همون متن رو کامل به فرمت Markdown خالص میدم، بدون متن توضیح اضافه من، که مستقیم قابل استفاده باشه:

---

```markdown
# 🏠 Energy Usage Optimization — 30% Bill Reduction via Data Analytics

## 📌 Overview
This project analyzes household electricity consumption data to identify peak usage patterns, estimate costs, and simulate scenarios for reducing energy bills by up to **30%**.  
The workflow integrates **SQL Server**, **Python**, and **Power BI** to deliver a reproducible, end-to-end analytics solution.

---

## 🗂 Project Structure
```

energy-optimization/
├─ data/
│  ├─ raw/           # Original dataset (no modifications)
│  ├─ processed/     # Cleaned & transformed outputs
├─ sql/
│  ├─ staging/       # Staging queries for cleaning and standardizing data
│  ├─ warehouse/     # Star schema tables (Fact & Dimensions)
│  ├─ views/         # Analytical views & KPI queries
├─ src/
│  ├─ config.yaml    # Paths, tariffs, parameters
│  ├─ features.py    # Feature engineering scripts
│  ├─ scenarios.py   # Scenario simulation scripts
├─ notebooks/
│  ├─ 01\_eda.ipynb   # Exploratory data analysis
├─ reports/
│  ├─ figures/       # Charts for Medium article & documentation
│  ├─ assumptions.md # Project assumptions (tariffs, baseload definition, etc.)
├─ powerbi/
│  └─ dashboard.pbix # Final interactive dashboard
├─ README.md

````

---

## 🛠 Tools & Technologies
- **SQL Server (SSMS)** — Data staging, cleaning, and star schema modeling
- **Python (PyCharm)** — EDA, feature engineering, scenario simulation
- **Power BI** — Interactive dashboard with What-If analysis
- **GitHub** — Version control and documentation

---

## 📊 Workflow Overview
1. **Data Ingestion & Staging (SQL)**  
   Load raw CSV into SQL Server, clean & standardize timestamps, remove duplicates, and validate data quality.
   
2. **Data Modeling (SQL)**  
   Create a star schema with fact and dimension tables, including tariff mapping and time dimensions.

3. **Feature Engineering & Analysis (Python)**  
   Build features like `kWh_total`, `kWh_peak`, `%peak_share`, and `baseload_kW`.  
   Run segmentation and simulate scenarios to estimate savings.

4. **Visualization & Simulation (Power BI)**  
   Connect to SQL views and Python outputs, create KPIs, and design interactive dashboards with What-If parameters.

---

## 📂 Data Source
- **Dataset:** [Household Electric Power Consumption Dataset](https://www.kaggle.com/) *(replace with actual link)*  
- **Columns:** timestamp, household_id, kWh, channel/device usage, tariff (if available)

---

## ⚡ Scenarios Modeled
1. **Baseload Reduction** — e.g., turning off standby appliances at night.
2. **Peak-to-Off-Peak Shifting** — moving high-consumption appliances to cheaper hours.
3. **Peak Shaving** — limiting usage during the most expensive tariff periods.

---

## 🚀 Getting Started
### Prerequisites
- SQL Server & SSMS
- Python 3.9+ with `pip`
- Power BI Desktop

### Installation
```bash
# Clone the repository
git clone https://github.com/your-username/energy-optimization.git
cd energy-optimization

# Create a Python virtual environment
python -m venv .venv
source .venv/bin/activate   # (Windows: .venv\Scripts\activate)

# Install dependencies
pip install -r requirements.txt
````

---

## 📌 Execution Steps

1. **Load** the dataset into `data/raw/`
2. **Run** SQL staging scripts → warehouse scripts → view scripts
3. **Execute** Python scripts for features and scenarios
4. **Open** Power BI file and refresh connections
5. **Explore** scenarios with What-If sliders

---

## 📄 License

This project is for educational and portfolio purposes only.
Data sources remain the property of their respective owners.

---

## ✍ Author

Your Name — [LinkedIn](https://www.linkedin.com/) | [Medium](https://medium.com/)

```

---

این الان Markdown کامل و آماده‌ی `README.md` هست، حتی ساختار فولدر رو هم با code block گذاشتم که گیت درست نمایش بده.  

اگر بخوای، می‌تونم **یک نسخه‌ی دیگه همین README رو به فارسی** هم برات درست کنم که وقتی پروژه رو برای مقاله Medium میذاری، فارسی‌زبان‌ها هم راحت‌تر بخونن.  

میخوای همین رو هم برات بزنم؟
```


## معماری
```mermaid
flowchart LR
A[Source CSV/Kaggle] --> B[(PostgreSQL)]
B --> C[Python ETL & EDA]
C --> D[Model Training & Forecasts]
D --> B
B --> E[Power BI Dashboards]


