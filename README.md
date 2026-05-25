# 🏨 Hotel Reservation Database System / سیستم پایگاه داده رزرو هتل

---

## 📌 Project Overview / بررسی اجمالی پروژه

This project is a relational database system for managing hotel reservations using MySQL with a simple Flask-based web interface. It demonstrates core database concepts such as schema design, relationships, SQL queries, and basic CRUD operations.

این پروژه یک سیستم پایگاه داده رابطه‌ای برای مدیریت رزرو هتل با استفاده از MySQL و یک رابط وب ساده با Flask است. این پروژه مفاهیم اصلی پایگاه داده مانند طراحی ساختار، روابط، پرس‌وجوهای SQL و عملیات پایه CRUD را نمایش می‌دهد.

---

## ⚙️ Technologies Used / فناوری‌های مورد استفاده

- MySQL Community Server / سرور MySQL Community  
- Python (Flask) / پایتون (Flask)  
- HTML (Jinja2 Templates) / قالب‌های HTML (Jinja2)  
- SQL (Structured Query Language) / زبان SQL  

---

## 🧱 Database Structure / ساختار پایگاه داده

The system contains four main tables:

این سیستم شامل چهار جدول اصلی است:

- customers / مشتریان  
- rooms / اتاق‌ها  
- reservations / رزروها  
- payments / پرداخت‌ها  

---

## 🔗 Relationships / روابط

- A customer can make multiple reservations  
  یک مشتری می‌تواند چندین رزرو انجام دهد  

- Each reservation is linked to one room  
  هر رزرو به یک اتاق مرتبط است  

- Each reservation can have a payment record  
  هر رزرو می‌تواند یک رکورد پرداخت داشته باشد  

---

## ✨ Features / ویژگی‌ها

- Relational database design with primary and foreign keys  
  طراحی پایگاه داده رابطه‌ای با کلیدهای اصلی و خارجی  

- Table creation and schema definition  
  ایجاد جداول و تعریف ساختار  

- Data insertion and management  
  درج و مدیریت داده‌ها  

- JOIN queries across multiple tables  
  اتصال جداول با JOIN  

- Aggregation queries (e.g., total revenue)  
  تجمیع داده‌ها (مثل محاسبه درآمد کل)  

- Filtering and data retrieval  
  فیلتر و بازیابی داده‌ها  

- Simple web interface for database interaction  
  رابط وب ساده برای تعامل با پایگاه داده  

---

## 🚀 How to Run / نحوه اجرا

### 1. Setup Database / راه‌اندازی پایگاه داده

Run these files in MySQL:

فایل‌های زیر را در MySQL اجرا کنید:

- `schema.sql`
- `sample_data.sql`

---

### 2. Install Dependencies / نصب پیش‌نیازها

-pip install flask mysql-connector-python

-python -m pip install flask mysql-connector-python
---

### 3. Run Application / اجرای برنامه
python app.py
---

### 4. Open in Browser / باز کردن در مرورگر
http://127.0.0.1:5000
