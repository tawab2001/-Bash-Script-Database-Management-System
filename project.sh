#!/bin/bash
#Ahmed Mohamed Tawab
#Tarek Mohamed
DB_DIR="./databases"
mkdir -p "$DB_DIR"

while true; do
    echo "##### Bash Shell Script DBMS #####"
    echo "1) Create Database"
    echo "2) List Databases"
    echo "3) Connect To Database"
    echo "4) Drop Database"
    echo "5) Exit"
    read -p "Choose an option: " choice
    
    if [[ "$choice" == "1" ]]; then
        read -p "Enter database name: " dbname
        if [[ -d "$DB_DIR/$dbname" ]]; then
            echo "Database already exists!"
        else
            mkdir "$DB_DIR/$dbname"
            echo "Database '$dbname' created."
        fi
    elif [[ "$choice" == "2" ]]; then
        echo "Available Databases:"
        ls "$DB_DIR"
    elif [[ "$choice" == "3" ]]; then
        read -p "Enter database name to connect: " dbname
        if [[ -d "$DB_DIR/$dbname" ]]; then
            while true; do
                echo "#####Connected to $dbname #####"
                echo "1) Create Table"
                echo "2) List Tables"
                echo "3) Drop Table"
                echo "4) Insert into Table"
                echo "5) Select From Table"
                echo "6) Delete From Table"
                echo "7) Update Table"
                echo "8) Back to Main Menu"
                read -p "Choose an option: " db_choice
                
                if [[ "$db_choice" == "1" ]]; then
                    read -p "Enter table name: " tablename
                    if [[ -f "$DB_DIR/$dbname/$tablename" ]]; then
                        echo "Table already exists!"
                    else
                        read -p "Enter column names (comma separated): " columns
                        echo "$columns" > "$DB_DIR/$dbname/$tablename"
                        echo "Table '$tablename' created."
                    fi
                elif [[ "$db_choice" == "2" ]]; then
                    echo "Tables in $dbname:"
                    ls "$DB_DIR/$dbname"
                elif [[ "$db_choice" == "3" ]]; then
                    read -p "Enter table name to drop: " tablename
                    if [[ -f "$DB_DIR/$dbname/$tablename" ]]; then
                        rm "$DB_DIR/$dbname/$tablename"
                        echo "Table '$tablename' deleted."
                    else
                        echo "Table does not exist!"
                    fi
                elif [[ "$db_choice" == "4" ]]; then
                    read -p "Enter table name: " tablename
                    if [[ -f "$DB_DIR/$dbname/$tablename" ]]; then
                        read -p "Enter values (comma separated): " values
                        echo "$values" >> "$DB_DIR/$dbname/$tablename"
                        echo "Data inserted into '$tablename'."
                    else
                        echo "Table does not exist!"
                    fi
                elif [[ "$db_choice" == "5" ]]; then
                    read -p "Enter table name: " tablename
                    if [[ -f "$DB_DIR/$dbname/$tablename" ]]; then
                        cat "$DB_DIR/$dbname/$tablename"
                    else
                        echo "Table does not exist!"
                    fi
                elif [[ "$db_choice" == "6" ]]; then
                    read -p "Enter table name: " tablename
                    if [[ -f "$DB_DIR/$dbname/$tablename" ]]; then
                        read -p "Enter value to delete: " del_value
                        grep -v "$del_value" "$DB_DIR/$dbname/$tablename" > "$DB_DIR/$dbname/tempfile" && mv "$DB_DIR/$dbname/tempfile" "$DB_DIR/$dbname/$tablename"
                        echo "Data deleted from '$tablename'."
                    else
                        echo "Table does not exist!"
                    fi
                elif [[ "$db_choice" == "7" ]]; then
                    read -p "Enter table name: " tablename
                    if [[ -f "$DB_DIR/$dbname/$tablename" ]]; then
                        read -p "Enter old value: " old_value
                        read -p "Enter new value: " new_value
                        sed -i "s/$old_value/$new_value/g" "$DB_DIR/$dbname/$tablename"
                        echo "Data updated in '$tablename'."
                    else
                        echo "Table does not exist!"
                    fi
                elif [[ "$db_choice" == "8" ]]; then
                    break
                else
                    echo "Invalid option!"
                fi
            done
        else
            echo "Database does not exist!"
        fi
    elif [[ "$choice" == "4" ]]; then
        read -p "Enter database name to drop: " dbname
        if [[ -d "$DB_DIR/$dbname" ]]; then
            rm -r "$DB_DIR/$dbname"
            echo "Database '$dbname' deleted."
        else
            echo "Database does not exist!"
        fi
    elif [[ "$choice" == "5" ]]; then
        exit 0
    else
        echo "Invalid option!"
    fi

done
