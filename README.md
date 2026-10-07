# 📝 Online Test & Question Management System

> A Java web application for managing **online examinations, question banks, users and automatic test results** using Servlets/JSP, MySQL and Apache Tomcat.

---

## 📌 Introduction

PBL3_Online-test-system is an online examination-management project built with the classic Java Servlet/JSP stack.

The system separates request handling into Controllers, database access into DAO classes, data objects into BEAN classes, and web pages/assets under WebContent.

It supports the main roles involved in an examination system: administrators, teachers and students.

---

## 🚀 Key Features

### 👨‍💼 Administrator
- Manage user accounts and roles.
- Manage subjects.
- Manage exam periods and examination data.
- Manage student/user information.

### 👨‍🏫 Teacher
- Create and manage questions.
- Build and manage tests.
- Work with question types and subject data.
- Review test/result information.

### 👨‍🎓 Student
- Log in to the examination system.
- Take online tests.
- Submit answers.
- Receive automatically calculated results.

---

## 🏗️ Application Flow

~~~text
Browser
   │
   ▼
JSP / WebContent
   │
   ▼
Java Servlet Controllers
   │
   ├── LoginController
   ├── TestSheetController
   ├── resultController
   └── Other management controllers
   │
   ▼
DAO Layer
   │
   ▼
DBConnection
   │
   ▼
MySQL Database
~~~

---

## 🛠️ Technologies Used

- ☕ **Java**
- 🌐 **Java Servlet API**
- 📄 **JSP**
- 🐈 **Apache Tomcat**
- 🗄️ **MySQL**
- 🔗 **JDBC**
- 🎨 **HTML / CSS / JavaScript**

---

## 📂 Actual Project Structure

~~~text
PBL3_Online-test-system/
├── ExamCNPM/
│   ├── src/
│   │   ├── BEAN/               # Data objects
│   │   ├── Controller/         # Servlet controllers
│   │   ├── DAO/                # Database access
│   │   └── DB/                 # DB connection
│   ├── WebContent/
│   │   ├── View/               # JSP pages
│   │   └── Style/              # CSS / JavaScript / assets
│   └── build/
├── examonline.sql              # MySQL database script
├── Description.pdf             # Project/install documentation
└── README.md
~~~

This replaces the previous generic Maven-like structure description and matches the source currently stored in the repository.

---

## 🔄 Important Source Components

### LoginController
Handles authentication/session flow before users enter protected functions.

### TestSheetController
Loads and serves examination/test-sheet data to the student-facing test flow.

### resultController
Processes submitted test information and displays/calculates result data.

### DAO Layer
The source contains dedicated DAO classes for areas such as:

- Accounts
- Exams
- Questions
- Question types
- Results
- Subjects
- User/question uploads

---

## ⚙️ Installation

### 1. Clone repository

~~~bash
git clone https://github.com/tttiuem2k3/PBL3_Online-test-system.git
cd PBL3_Online-test-system
~~~

### 2. Create the database

Import:

~~~text
examonline.sql
~~~

into MySQL.

### 3. Configure database connection

Review:

~~~text
ExamCNPM/src/DB/DBConnection.java
~~~

and update host, database name, username and password for your local MySQL environment.

### 4. Deploy the Java web application

Import ExamCNPM into an IDE/environment that supports Java Web/Servlet applications and deploy it to Apache Tomcat.

The repository also includes:

[Description.pdf](./Description.pdf)

for additional project/setup information.

---

## 🕵️ Usage Flow

1. Start MySQL.
2. Start Apache Tomcat with the ExamCNPM web application deployed.
3. Open the application in a browser.
4. Log in with a configured account.
5. Use functions according to the account role:
   - Admin → management functions.
   - Teacher → question/test management.
   - Student → online examination and result viewing.

The exact Tomcat context path depends on the deployment configuration.

---

## 📊 Database

The SQL script in the repository contains the database used by the project:

~~~text
examonline.sql
~~~

The application accesses database data through DBConnection + DAO classes instead of embedding SQL directly into the UI layer.

---

## 🚀 Future Development

- Improve password/security handling.
- Add responsive frontend design.
- Add REST APIs for modern clients.
- Add richer exam analytics.
- Add randomized/adaptive question generation.
- Integrate AI-assisted question suggestion and result analysis.
- Add automated tests and a modern build/dependency system.

---

## 📞 Contact

- 📧 Email: tttiuem2k3@gmail.com
- 👥 LinkedIn: [Thịnh Trần](https://www.linkedin.com/in/thinh-tran-04122k3/)
- 💬 Zalo / Phone: +84 329966939 | +84 336639775

---
