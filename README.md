# Bash Shell Script Database Management System (DBMS)

## Overview
This project is a simple **Database Management System (DBMS)** implemented using **Bash scripting**. It allows users to create, manage, and manipulate databases and tables in a file-based environment.

## Features
- **Create and manage databases**
- **List available databases**
- **Connect to a database**
- **Create, list, and delete tables**
- **Insert, update, and delete records**
- **Simple query system for selecting and updating data**

## Project Structure
The script organizes databases as directories and tables as files within those directories. Data records are stored in a text-based format.

## How to Use
1. **Run the script**
   ```bash
   chmod +x dbms.sh
   ./dbms.sh
   ```
2. **Choose an option** from the main menu:
   - `1) Create Database` - Create a new database.
   - `2) List Databases` - Show all available databases.
   - `3) Connect To Database` - Access a database and perform operations.
   - `4) Drop Database` - Delete a database and its contents.
   - `5) Exit` - Close the script.

3. **Within a connected database, you can:**
   - Create a table by specifying column names.
   - List available tables.
   - Drop a table.
   - Insert, update, or delete data records.
   - Select and view table contents.

## Technologies Used
- **Bash scripting**
- **Linux file system (directories and text files)**
- **Basic command-line operations**

## Future Enhancements
- Implement SQL-like querying for better usability.
- Add user authentication for database access.
- Improve data storage format to handle complex queries.

## Contributors
- **Ahmed Mohamed Tawab**
- **Tarek Mohamed**

## License
This project is open-source and available for use and modification.

---
Feel free to fork, contribute, and enhance the project!

