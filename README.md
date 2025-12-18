# AuraTimes – Dynamic Watch Reselling Website

AuraTimes is a dynamic e-commerce website for watch reselling, developed using **Java (primary language)** with **JSP** and **Servlets** following the **MVC architecture**.  
The system includes secure authentication, encryption, session management, and role-based access control for both **users** and **admins**, along with complete CRUD functionality.

## Key Features
- Secure login & session management  
- Encryption for sensitive user data  
- Role-based access (User / Admin)  
- Product management (CRUD)  
- Cart & order management  
- User profile management  

## UI Walkthrough
▶️ **UI Walkthrough Video (Google Drive)**  
A short walkthrough of the AuraTimes interface, demonstrating the main user flow and admin management features.  
[Watch the UI Walkthrough](https://drive.google.com/file/d/1Q2Dwx78cu2YsSzooWdw8Ur8eDE_6CEfU/view?usp=drive_link)

## Project Documentation
📄 **Final Report (PDF)**  
Includes technical architecture, database design, MVC breakdown, and implementation details.  
[Final Report – PDF](./Documentation/Final_Report_AuraTimes.pdf)

## Tech Stack
- **Language:** Java  
- **Frontend:** JSP, HTML, CSS, JavaScript  
- **Backend:** Java Servlets (MVC)  
- **Database:** MySQL (via XAMPP)  
- **Server:** Apache Tomcat  
- **IDE:** Eclipse  

---

## Getting Started (Eclipse + XAMPP + Tomcat)

### Prerequisites
Install the following:
- Java JDK (8/11/17 recommended)
- Eclipse IDE for Enterprise Java and Web Developers
- Apache Tomcat (Tomcat 9 recommended for `javax.servlet` projects)
- XAMPP (Apache + MySQL + phpMyAdmin)
- Git

### 1) Clone the repository
```bash
git clone <YOUR_REPO_URL>
cd AuraTimes
```

### 2) Import into Eclipse
1. Open Eclipse → **File** → **Import**
2. Select **Existing Projects into Workspace**
3. Browse to the cloned project folder → **Finish**

### 3) Configure Tomcat Server in Eclipse
1. Open **Servers** view:
   - **Window** → **Show View** → **Servers**
2. Click **Create a new server**
3. Choose **Apache → Tomcat v9.0 Server**
4. Select your Tomcat installation directory → **Finish**
5. Right-click the server → **Add and Remove…** → add **AuraTimes** → **Finish**

### 4) Database Setup (XAMPP MySQL)
1. Open **XAMPP Control Panel** and start:
   - ✅ Apache
   - ✅ MySQL
2. Open phpMyAdmin:
   - `http://localhost/phpmyadmin`
3. Create a database (example name):
   - `auratimes`
4. Import the `.sql` file:
   - Select DB → **Import** → choose your `.sql` file → **Go**

> If your SQL file is inside the repo, mention its exact path here (example: `./Database/auratimes.sql`).

### 5) Update Database Connection Settings
Update the DB config in your project (example XAMPP defaults):
- Host: `localhost`
- Port: `3306`
- User: `root`
- Password: *(empty by default in XAMPP)*

> Common locations: `db.properties`, `DatabaseConnection.java`, or a DAO/utility class.

### 6) Run the Project
1. In Eclipse → **Servers** tab:
   - Right-click Tomcat → **Start**
2. Open in browser:
```text
http://localhost:8080/AuraTimes/
```

---

## Troubleshooting
- **404 Not Found:** Make sure the project is added to Tomcat via **Add and Remove…**
- **JDBC / DB errors:** Ensure MySQL is running in XAMPP and DB credentials match your config.
- **Servlet import mismatch:**
  - `javax.servlet.*` → use **Tomcat 9**
  - `jakarta.servlet.*` → use **Tomcat 10+**

## License
This project is intended for academic and learning purposes.
