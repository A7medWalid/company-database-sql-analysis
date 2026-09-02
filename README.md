# company-database-sql-analysis
# 🏢 Company Database Analysis (SQL Server)

Welcome to the **Company SD Database Analysis** repository. This project demonstrates relational database queries, complex multi-table joins, subqueries, and employee-project analytics using **Microsoft SQL Server (T-SQL)** on a standardized enterprise company schema[cite: 3, 4].

---

## 📌 Project Overview

The primary goal of this project is to model, query, and analyze corporate operational data[cite: 3, 4]. It covers real-world enterprise scenarios such as mapping department managers, analyzing project assignments, filtering salary structures, tracking employee dependents, and evaluating supervisory hierarchies.

---

## 🗄️ Database Schema & Architecture

The database **`Company_SD`** consists of 5 interconnected core entities[cite: 4]:

- **`Employee`**: Stores employee personal information, salaries, department assignments, and direct supervisors (Self-Referencing Foreign Key)[cite: 4].
- **`Departments`**: Manages company department details and assigns department managers[cite: 4].
- **`Project`**: Contains company project details, locations, cities, and department associations[cite: 4].
- **`Works_for`**: Many-to-Many junction table tracking employee work hours per project[cite: 4].
- **`Dependent`**: Stores employee family dependent records with cascading referential integrity[cite: 4].

---

## 🔍 Key Business Queries & Technical Insights

Here is a summary of the logical analytical tasks solved in this repository[cite: 3]:

### 1. 👥 Employee & Management Hierarchy
- **Manager Identification**: Performs `RIGHT JOIN` operations to identify department managers and link them with department records[cite: 3].
- **Supervisor Analysis**: Uses subqueries to find all direct reports managed by specific senior supervisors (e.g., 'Kamel Mohamed')[cite: 3].

### 2. 🏗️ Projects & Work Assignments
- **Location-Based Filtering**: Retrieves active projects filtered by specific cities (e.g., 'Cairo', 'Alex') and name patterns[cite: 3].
- **Project Workload Tracking**: Joins `Employee`, `Departments`, `Project`, and `Works_for` tables to filter employees working on specific projects (e.g., 'Al Rabwah') with minimum required hours[cite: 3].

### 3. 💵 Departmental & Compensation Analysis
- **Targeted Salary Analysis**: Filters employees in specific departments (e.g., Department 30) within explicit salary boundaries ($1000 - $2000)[cite: 3].
- **Full Employee Audit**: Combines employee details with department start dates, project names, and locations using multi-table `INNER JOIN`s[cite: 3].

### 4. 👨‍👩‍👧 Family & Dependent Tracking
- **Dependent Auditing**: Utilizes `LEFT JOIN`s to ensure all employee dependent records (names, sex, birth dates) are linked to their primary employee accounts[cite: 3].

---

## 🛠️ Tech Stack & SQL Features

- **RDBMS**: Microsoft SQL Server (T-SQL)[cite: 4]
- **Joins**: `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`[cite: 3]
- **Advanced Filtering**: `BETWEEN`, `LIKE`, Subqueries, `DISTINCT`[cite: 3]
- **Data Formatting**: String functions (`CONCAT`) for dynamic full-name generation[cite: 3]
- **Constraints & Integrity**: Foreign Keys, Cascading Rules (`ON DELETE CASCADE`), Primary Keys[cite: 4]

---

## 🚀 How to Set Up and Run

1. **Database Setup**:
   - Open SQL Server Management Studio (SSMS).
   - Execute `Company_Database_setup.sql` to build the database `Company_SD`, create tables, set up constraints, and seed initial records[cite: 4].
2. **Execute Queries**:
   - Run `Company_Query.sql` to execute the analytical queries and explore the datasets[cite: 3].

---

## ✍️ Author

**Eng. Ahmed Walid**  
*Data Science & Artificial Intelligence Student | Computer & Control Systems Engineering Department, Mansoura University.*  
- 🌐 GitHub: [ِِِِِA7medWalid](https://github.com/A7medWalid)
- 💼 LinkedIn: [Ahmed Walid](https://www.linkedin.com/in/ahmed-walid-9o9)
