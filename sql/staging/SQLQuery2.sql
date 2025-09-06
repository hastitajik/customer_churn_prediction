USE EnergyOptimization;
select * from weather_daily
select * from power_usage;

-- ساخت جدول 
CREATE SCHEMA staging;
-- جدول اول
CREATE TABLE staging.stg_power_usage (
  reading_datetime DATETIME2   NOT NULL,
  household_id     INT         NOT NULL DEFAULT(1),
  kWh              DECIMAL(9,3) NOT NULL,
  CONSTRAINT ck_stg_power_kwh_nonneg CHECK (kWh >= 0)
);
-- پر کردن
INSERT INTO staging.stg_power_usage (reading_datetime, household_id, kWh)
SELECT
  CAST(StartDate AS DATETIME2)                 AS reading_datetime,
  1                                            AS household_id,     -- اگر تک‌خانه است
  CAST([Value (kWh)] AS DECIMAL(9,3))          AS kWh
FROM dbo.power_usage
WHERE [Value (kWh)] IS NOT NULL;


-- جدول دوم


-- ادغام دو جدول
SELECT w.*, p.* from weather_daily w
left join power_usage p on cast(p.StartDate as DATE) = cast(w.Date as DATE);

-- تعداد رکورد
SELECT COUNT(*) as count_record FROM power_usage;

-- بازه زمانی
SELECT MIN(Date) as first_day, MAX(Date) as last_day FROM weather_daily;

-- وجود مقادیر منفی یا NULL
SELECT COUNT(*) FROM stg_energy_raw WHERE kWh < 0 OR kWh IS NULL;

-- نمونه داده
SELECT TOP 10 * FROM stg_energy_raw;