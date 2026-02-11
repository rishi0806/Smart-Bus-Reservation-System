# 🚌 Smart Bus Reservation System

A full-stack **Smart Bus Reservation System** built using **Java (Spring Boot), JSP, Bootstrap, MySQL**.
This system allows users to search buses, book tickets, make payments and give feedback.
Admins can manage routes, buses, reservations and view feedback.

---

# 🌟 Features

## 👤 User Features

1. Register & Login
2. Search buses by route
3. Book seats
4. View reservation history
5. Submit feedback

## 🛠️ Admin Features

1. Admin Login
2. Dashboard analytics
3. Manage Routes (Add / Update / Delete)
4. Manage Buses (Add / Update / Delete)
5. View Reservations
6. View User Feedback

---

🗄 Database Tables
| Entity Name | Description |
|-------------|-------------|
| **User** | Stores registered user details such as username, password, and profile information |
| **Admin** | Stores administrator login credentials |
| **Route** | Contains route details including source, destination, and distance |
| **Bus** | Stores bus information such as bus name, type, seat capacity, price, and availability |
| **Reservation** | Final confirmed booking records with status and booking date |
| **Feedback** | Stores user feedback including journey date, ratings, and comments |

---

# 🏗️ Tech Stack

1. Spring Boot
2. Bootstrap
3. MySQL
4. Maven
5. Tomcat

---

# ⚙️ How To Run The Project

## 1️⃣ Prerequisites

Install the following:

* Java 17+
* Maven
* MySQL
* Spring Tools for Eclipse / IntelliJ / VS Code

---

## 2️⃣ Database Setup

### Create Database

```sql
CREATE DATABASE busapp;
```

### Update `application.properties`

```
spring.datasource.url=jdbc:mysql://localhost:3306/busapp
spring.datasource.username=root
spring.datasource.password=YOUR_PASSWORD

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
server.port=8080
```

---

## 3️⃣ Run the Project

Run the main Spring Boot application class:

```
SmartBusReservationApplication.java
```

Application will start at:

```
http://localhost:8080
```

---

# 🌐 Application URLs

Base URL:

```
http://localhost:8080
```
---
🔐 Spring Security

This application uses Spring Security for authentication and role-based authorization.

👥 Roles in the System
| Role      | Description                                         |
| --------- | --------------------------------------------------- |
| **ADMIN** | Can manage routes, buses, reservations and feedback |
| **USER**  | Can register, login, book buses and give feedback   |

---
---

# 👤 User Access Guide

## 🔹 Register New User

Open:

```
http://localhost:8080/user/reg
```

Fill in details and create an account.

---

## 🔹 User Login

Open:

```
http://localhost:8080/user/login
```

Enter username and password.

---

## 🔹 User Dashboard

After login, users can:

* Search buses (From → To)
* Book tickets
* Make payment
* View reservations
* Give feedback

---

## 🔹 My Reservations Page

```
http://localhost:8080/user/reservations
```

---

# 🔐 Admin Access Guide

## 🔹 Admin Login

Open:

```
http://localhost:8080/login
```

### Default Admin Credentials

```
Username: Admin
Password: admin123
```

---

## 🔹 Admin Dashboard

```
http://localhost:8080/dashboard
```

From here admin can manage the entire system.

---

# 🛠️ Admin Functional Pages

| Feature           | URL                   |
| ----------------- | --------------------- |
| Manage Routes     | `/routedashboard`     |
| Manage Buses      | `/bus`                |
| View Reservations | `/admin/reservations` |
| View Feedback     | `/admin/feedback`     |

---

# 💳 Booking Flow

1. User searches buses
2. Selects bus
3. Enters travel date & seats
4. Payment summary page
5. Payment success page
6. Reservation saved
7. User submits feedback

---

# Final Output

* 👨‍💼Admin Module
  <p align="center">
    <img src="screenshots/Admin%20Dashboard.png" width="45%">
    <img src="screenshots/Admin%20Feedback%20Page.png" width="45%">
  </p>

  <p align="center">
    <img src="screenshots/Admin%20Reservations%20Page.png" width="45%">
    <img src="screenshots/Route%20Dashboard.png" width="45%">
  </p>

  <p align="center">
    <img src="screenshots/Bus%20Dashboard.png" width="60%">
  </p>

*👤 User Module
  <p align="center">
    <img src="screenshots/User%20Dashboard.png" width="45%">
    <img src="screenshots/Bus%20Reservation.png" width="45%">
  </p>

<p align="center">
  <img src="screenshots/Payment%20Page.png" width="45%">
  <img src="screenshots/User%20Reservations.png" width="45%">
</p>

<p align="center">
  <img src="screenshots/User%20Feedback.png" width="45%">
</p>

* 🔐 Authentication Pages
  <p align="center">
  <img src="screenshots/User%20Login.png" width="45%">
  <img src="screenshots/User%20Register.png" width="45%">
</p>



---

# 🚀 Future Improvements

* Online payment gateway integration
* Seat selection UI
* Email notifications
* Mobile app version

---

# 👨‍💻 Author

**Smart Bus Reservation System Project**
Developed by **Rishi Kumar**

---
# Acknowledgement

I am grateful to my trainer [Satya Praksh sir](https://github.com/sathyasoma) for his invaluable guidance, mentorship, and continuous support throughout my Java Full Stack training.
---
