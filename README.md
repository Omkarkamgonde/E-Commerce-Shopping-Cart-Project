# How to Run the Project

## Prerequisites
1.  **Java JDK 8 or higher** installed.
2.  **Maven** installed and added to your system PATH.
3.  **MySQL Server** installed and running.

## Database Setup
1.  Log in to MySQL:
    ```bash
    mysql -u root -p
    ```
2.  Create the database:
    ```sql
    CREATE DATABASE ecommerce_cart;
    ```
3.  Import the initial data:
    ```bash
    mysql -u root -p ecommerce_cart < jsp-ecommerce/database/20210519.sql
    ```
4.  Update database credentials in `jsp-ecommerce/src/cn/techtutorial/connection/DbCon.java` if your password is not `Deshmukhadcet@123`.

## Running the Application
1.  Open a terminal.
2.  Navigate to the project directory:
    ```bash
    cd jsp-ecommerce
    ```
3.  Run the application using Maven:
    ```bash
    mvn tomcat7:run
    ```
4.  Open your browser and go to:
    **[http://localhost:8080/](http://localhost:8080/)**

## Troubleshooting
-   If you see "mvn command not found", ensure Maven is installed and in your PATH.
-   If you get a database connection error, double-check your MySQL username and password in `DbCon.java`.
