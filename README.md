## Virtusa Practice Assignments

# Overview

This repository contains three mini projects implemented as part of practice assignments for performance evaluation. The objective is to demonstrate hands-on understanding of SQL, Core Java, and Python concepts through real-world use cases.


# 1. SQL Project – Digital Library Audit

# Description

Designed a relational database system to manage books, students, and issued records. The system helps identify overdue books, analyze borrowing trends, and manage inactive users.

# Features

* Created relational tables: Books, Students, IssuedBooks
* Implemented overdue book detection (14-day rule)
* Generated category-wise popularity report using GROUP BY
* Identified inactive students (no activity for 3 years)

# Tools Used

* MySQL Workbench

# Execution Steps

1. Created tables using DDL statements
2. Inserted sample data
3. Executed queries to generate reports
4. Verified outputs in MySQL Workbench



2. Java Project – SafeLog Password Validator

### Description

Developed a password validation system that enforces corporate security policies and provides specific feedback to users.

# Features

* Minimum length validation (at least 8 characters)
* Checks for uppercase letters and digits
* Displays specific error messages (e.g., "Too short", "Missing a digit")
* Uses loop-based retry mechanism until valid input is provided

# Concepts Used

* String manipulation
* Loops (for, while)
* Conditional statements
* Modular programming (methods)

# How to Run

1. Compile the program:
   javac PasswordValidator.java
2. Run the program:
   java PasswordValidator


# 3. Python Project – FareCalc Travel Optimizer

# Description

Built a fare calculation system for a ride-sharing service that computes ride cost based on distance, vehicle type, and surge pricing during peak hours.

# Features

* Dictionary-based rate mapping for vehicle types
* Surge pricing applied during peak hours (5 PM – 8 PM)
* Function-based fare calculation
* Basic input validation for vehicle type

# Concepts Used

* Dictionaries
* Functions
* Conditional logic
* User input handling

# How to Run

1. Open terminal or command prompt
2. Run the script:
   python fare_calc.py

# Sample Output

Displays total fare based on user input including surge multiplier if applicable.


## Conclusion

These projects demonstrate practical implementation of database management, programming logic, and problem-solving using SQL, Java, and Python. All solutions were implemented and tested individually to ensure correctness.
