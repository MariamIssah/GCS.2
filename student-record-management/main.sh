#!/bin/bash

# Function to create a student record
create_record() {
    echo "Enter student email:"
    read email
    echo "Enter student age:"
    read age
    echo "Enter student ID:"
    read id
    echo "$email, $age, $id" >> students-list_1023.txt
    echo "Student record created successfully."
}

# Function to view all student records
view_records() {
    echo "List of students:"
    cat students-list_1023.txt
}

# Function to delete a student record by ID
delete_record() {
    echo "Enter student ID to delete:"
    read id
    sed -i "/\b$id\b/d" students-list_1023.txt
    echo "Student record deleted successfully."
}

# Function to update a student record by ID
update_record() {
    echo "Enter student ID to update:"
    read id
    echo "Enter new email:"
    read new_email
    echo "Enter new age:"
    read new_age
    sed -i "/\b$id\b/c\\$new_email, $new_age, $id" students-list_1023.txt
    echo "Student record updated successfully."
}

# Main menu
while true; do
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student record"
    echo "4. Update student record"
    echo "5. Exit"
    read -p "Choose an option: " choice
    case $choice in
        1) create_record;;
        2) view_records;;
        3) delete_record;;
        4) update_record;;
        5) exit;;
        *) echo "Invalid option";;
    esac
done
