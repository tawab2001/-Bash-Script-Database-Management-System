# -Bash-Script-Database-Management-System
Description
This is a simple Database Management System (DBMS) implemented in Bash. It allows users to:

Create, list, connect, and delete databases.
Create, list, delete tables, and perform CRUD operations (Insert, Select, Update, Delete) on tables.
Features
Create and manage multiple databases
CRUD operations on tables
Simple file-based storage
How to Use
Clone the repository:
bash
Copy
Edit
git clone https://github.com/your-username/repository-name.git
cd repository-name
Make the script executable:
bash
Copy
Edit
chmod +x dbms.sh
Run the script:
bash
Copy
Edit
./dbms.sh
Structure
bash
Copy
Edit
/databases/  
  ├── db1/  
  │   ├── table1  
  │   ├── table2  
  ├── db2/  
  ├── ...
Example Commands
Create a Database → Enter option 1 and provide a database name.
Create a Table → Enter option 3 (Connect to DB) → Choose 1 → Provide a table name and column names.
Insert Data → Choose 4 inside a connected database and enter values.
Select Data → Choose 5 to view stored records.
Update/Delete Data → Options 6 and 7 allow modifying or removing specific entries.
Author
Ahmed Mohamed Tawab
Tarek Mohamed
