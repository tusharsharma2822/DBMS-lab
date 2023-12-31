                                            Experiment-0
Objective: Write different syntaxes of DDL, DML, DCL, TCL with example.
•	Data Definition Language(DDL)
DDL or Data Definition Language actually consists of the SQL commands that can be used to define the database schema. It simply deals with descriptions of the database schema and is used to create and modify the structure of database objects in the database. DDL is a set of SQL commands used to create, modify, and delete database structures but not data. These commands are normally not used by a general user, who should be accessing the database via an application.
List of DDL commands: 
1-CREATE: This command is used to create the database or its objects (like table, index, function, views, store procedure, and triggers).
Syntax:
CREATE TABLE TableName (
    Column1 DataType,
    Column2 DataType,
    ...
);
Example:

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);

2-DROP: This command is used to delete objects from the database.
Syntax:
DROP TABLE TableName;

Example:
DROP TABLE Employees;

3-ALTER: This is used to alter the structure of the database.
Syntax:
ALTER TABLE TableName
ADD COLUMN NewColumn DataType;
Example:
ALTER TABLE Employees
ADD COLUMN Department VARCHAR(50);

4-TRUNCATE: This is used to remove all records from a table, including all spaces allocated for the records are removed.
Syntax:
TRUNCATE TABLE TableName;
Example:
TRUNCATE TABLE Employees;

5-COMMENT: This is used to add comments to the data dictionary.

6-RENAME: This is used to rename an object existing in the database.


•	Data Manipulation Language(DML)
The SQL commands that deal with the manipulation of data present in the database belong to DML or Data Manipulation Language and this includes most of the SQL statements. It is the component of the SQL statement that controls access to data and to the database. Basically, DCL statements are grouped with DML statements.
List of DML commands:

1-INSERT: It is used to insert data into a table.
Syntax:
INSERT INTO TableName (Column1, Column2, ...)
VALUES (Value1, Value2, ...);
Example:
INSERT INTO Employees (FirstName, LastName, Salary)
VALUES ('John', 'Doe', 60000);

2-UPDATE: It is used to update existing data within a table.
Syntax:
UPDATE TableName
SET Column1 = Value1, Column2 = Value2
WHERE Condition;
Example:
UPDATE Employees
SET Salary = 65000
WHERE LastName = 'Doe';

3-DELETE: It is used to delete records from a database table.
Syntax:
DELETE FROM TableName
WHERE Condition;
Example:
DELETE FROM Employees
WHERE Salary < 50000;

4-LOCK: Table control concurrency.

5-CALL: Call a PL/SQL or JAVA subprogram.

6-EXPLAIN PLAN: It describes the access path to data.


•	Data Control Language(DCL)
DCL includes commands such as GRANT and REVOKE which mainly deal with the rights, permissions, and other controls of the database system
List of  DCL commands: 

1-GRANT: This command gives users access privileges to the database.
Syntax:
GRANT Permission
ON TableName
TO User;
Example:
GRANT SELECT, INSERT
ON Employees
TO Manager;

2-REVOKE: This command withdraws the user’s access privileges given by using the GRANT command.
Syntax:
REVOKE Permission
ON TableName
FROM User;
Example:
REVOKE INSERT
ON Employees
FROM Manager;


•	Transaction Control Language(TCL)
Transactions group a set of tasks into a single execution unit. Each transaction begins with a specific task and ends when all the tasks in the group are successfully completed. If any of the tasks fail, the transaction fails. Therefore, a transaction has only two results: success or failure. You can explore more about transactions here. Hence, the following TCL commands are used to control the execution of a transaction: 
List of TCL commands:

1-BEGIN: Opens a Transaction.

2-COMMIT: Commits a Transaction.
Syntax:
COMMIT;

3-ROLLBACK: Rollbacks a transaction in case of any error occurs.
Syntax:
ROLLBACK; 

4-SAVEPOINT: Sets a save point within a transaction.
Syntax:
SAVEPOINT SAVEPOINT_NAME;  
