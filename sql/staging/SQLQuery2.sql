select * from weather_daily
select * from power_usage;

-- تعداد رکورد
SELECT COUNT(*) FROM stg_energy_raw;

-- بازه زمانی
SELECT MIN(reading_datetime), MAX(reading_datetime) FROM stg_energy_raw;

-- وجود مقادیر منفی یا NULL
SELECT COUNT(*) FROM stg_energy_raw WHERE kWh < 0 OR kWh IS NULL;

-- نمونه داده
SELECT TOP 10 * FROM stg_energy_raw;