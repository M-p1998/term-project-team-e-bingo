# Team E: Bingo Code Repository

## Team member
|        Student ID          |     Student Full Name      |
| ---------------------------| ---------------------------|
|         922254694          |     Ekarat Buddharuksa     |
|         922536937          |     Arcilla Karl Xavier    |
|         923091933          |     Nguyen Danish          |
|         921759134          |     Phyu Mya               |

***

## Setup
1. After you clone the repository, create .env file in root directory and add this header into .env file

    ```
    POSTGRE_ID=''
    POSTGRE_PASS=''
    DB_HOST=''
    ```

    Fill in your PostgreSQL information
<br />
2. Goto /backend/database, there will be 2 files avaliable
   - backup.sql - this the SQL query to create schema on your database in PostgreSQL.
   - index.ts - Sql query collection file, here you need to change a few thing
     - Line 9, change port, database, and ssl configuration according to your PostgreSQL setting

## Starting the application
### Running in development mode
 ```
 npm run dev 
 ```
### Running in production
 ```
 npm run build
 npm start
 ```
