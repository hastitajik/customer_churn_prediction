
# Home Energy Analytics — کاهش قبض برق با تحلیل داده‌های هوشمند

[![Python](https://img.shields.io/badge/Python-3.10+-blue)]()
[![SQL](https://img.shields.io/badge/SQL-PostgreSQL-informational)]()
[![Power BI](https://img.shields.io/badge/PowerBI-Dashboard-yellow)]()


> تحلیل و پیش‌بینی مصرف برق خانگی با SQL + Python + Power BI

--

---

## چرا این پروژه؟
- **مسئله:** قبض برق خانگی بالاست، الگوی مصرف شفاف نیست.
- **راه‌حل:** تحلیل سری زمانی + اینسایت عملی + پیش‌بینی کوتاه‌مدت.
- **Tech Stack:** SQL برای ذخیره و آماده‌سازی، Python برای ETL/Modeling، Power BI برای تصمیم‌سازی.

**Hypothesis:**   با شناسایی ساعات پیک و رفتارهای فصلی می‌توان ~۳۰٪ هزینه را کاهش داد (زمان‌بندی مصرف، بهینه‌سازی دستگاه‌ها، آگاهی‌بخشی).

---

## دمو و خروجی‌ها
- داشبورد Power BI با KPIها، روند روز/هفته/ماه، ساعات پیک، و پیش‌بینی 30 روزه.
- جدول پیشنهادهای عملی کاهش مصرف.

> Screenshots / GIF ها  
> `docs/img/dashboard-overview.png`  
> `docs/img/peak-hours.png`  

(بعد از ساخت داشبورد، اسکرین‌شات‌ها را اینجا اضافه میشه.)

---

## دیتاست
- منبع: *Household Power Consumption* (Kaggle) یا دیتای مشابه سری زمانی خانگی.  
- ستون‌های کلیدی: `datetime`, `consumption_kwh`, `voltage`, `sub_metering_*`, (اختیاری) `temperature`, `humidity`.

> فایل خام را در `data/raw/` قرار میگیره.  
> فایل تمیز شده در `data/processed/`.

---

## معماری
```mermaid
flowchart LR
A[Source CSV/Kaggle] --> B[(PostgreSQL)]
B --> C[Python ETL & EDA]
C --> D[Model Training & Forecasts]
D --> B
B --> E[Power BI Dashboards]


