# Library Management System – Database Schema
This repository contains the SQL schema and ER diagram for a Library Management System, designed as part of Task 1: Database Setup and Schema Design.

##  Schema Overview

The database includes the following 8 tables:

1. **Readers**: Stores library members' information.
2. **Authors**: Stores information about book authors.
3. **Publisher**: Stores book publishers and publication years.
4. **Books**: Stores book information including relationships to `Authors` and `Publisher`.
5. **Staff**: Stores staff members and their roles.
6. **Loan**: Tracks book lending information.
7. **Login**: Stores login credentials of readers.
8. **Reports**: Tracks book transactions managed by staff.

## Objective
To create a well-structured relational database using PostgreSQL (via pgAdmin 4), defining all necessary entities, relationships, constraints, and data integrity rules.

