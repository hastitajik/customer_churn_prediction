
# Home Energy Analytics — کاهش ۳۰٪ قبض برق با تحلیل داده‌های هوشمند

[![Python](https://img.shields.io/badge/Python-3.10+-blue)]()
[![SQL](https://img.shields.io/badge/SQL-PostgreSQL-informational)]()
[![Power BI](https://img.shields.io/badge/PowerBI-Dashboard-yellow)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)]()

> تحلیل و پیش‌بینی مصرف برق خانگی با SQL + Python + Power BI. هدف: ارائه اینسایت عملی برای کاهش ~۳۰٪ هزینه انرژی.

---

## فهرست
- [چرا این پروژه؟](#چرا-این-پروژه)
- [دمو و خروجی‌ها](#دمو-و-خروجی‌ها)
- [دیتاست](#دیتاست)
- [معماری](#معماری)
- [ساختار پروژه](#ساختار-پروژه)
- [نصب و راه‌اندازی سریع](#نصب-و-راهاندازی-سریع)
- [SQL: مدل داده و کوئری‌ها](#sql-مدل-داده-و-کوئریها)
- [Python: ETL، EDA و مدل](#python-etl-eda-و-مدل)
- [Power BI: داشبورد](#power-bi-داشبورد)
- [ارزیابی مدل](#ارزیابی-مدل)
- [Roadmap](#roadmap)
- [مقاله مدیوم](#مقاله-مدیوم)
- [نحوه اجرا و بازتولید نتایج](#نحوه-اجرا-و-بازتولید-نتایج)
- [مشارکت](#مشارکت)
- [مجوز](#مجوز)

---

## چرا این پروژه؟
- **مسئله:** قبض برق خانگی بالاست، الگوی مصرف شفاف نیست.
- **راه‌حل:** تحلیل سری زمانی + اینسایت عملی + پیش‌بینی کوتاه‌مدت.
- **Tech Stack:** SQL برای ذخیره و آماده‌سازی، Python برای ETL/Modeling، Power BI برای تصمیم‌سازی.

**Hypothesis:** با شناسایی ساعات پیک و رفتارهای فصلی می‌توان ~۳۰٪ هزینه را کاهش داد (زمان‌بندی مصرف، بهینه‌سازی دستگاه‌ها، آگاهی‌بخشی).

---

## دمو و خروجی‌ها
- داشبورد Power BI با KPIها، روند روز/هفته/ماه، ساعات پیک، و پیش‌بینی ۱۴ روزه.
- جدول پیشنهادهای عملی کاهش مصرف.

> Screenshots / GIF ها  
> `docs/img/dashboard-overview.png`  
> `docs/img/peak-hours.png`  

(بعد از ساخت داشبورد، اسکرین‌شات‌ها را اینجا اضافه کنید.)

---

## دیتاست
- منبع: *Household Power Consumption* (Kaggle) یا دیتای مشابه سری زمانی خانگی.  
- ستون‌های کلیدی: `datetime`, `consumption_kwh`, `voltage`, `sub_metering_*`, (اختیاری) `temperature`, `humidity`.

> فایل خام را در `data/raw/` قرار دهید.  
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

