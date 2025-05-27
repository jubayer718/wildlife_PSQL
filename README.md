
#### What is PostgreSQL?

 * Postgresql is the world most object-relational database management system that support both sql and json. It's design for enterprise-level performance and is valued for it's robust feature and reliability. 


#### What is the purpose of a database schema in PostgreSQL?


* In postgreSql schemas act as a logical containers within the database, organizing database object like table, views and function. They provide a structured way to enhance organization, manage security, maintainability and access data. 

#### Explain the Primary Key and Foreign Key concepts in PostgreSQL?


* Pk: Primary key is a column or a set of column that uniquely identified each row and it does not allow null value. 

* FK: When a the primary key in one table is used as a reference in another table, that column is called a Foreign Key.


#### Explain the purpose of the WHERE clause in a SELECT statement?

* SELECT: when we need see all table info and handle a operation then we use SELECT clause.
```
for example: SELECT * from Table_name and SELECT * from Table_name ORDER_BY Column name.
```
* WHERE: where clause mainly used for conditionally handle operation and get value from the table.
```
SELECT * FROM students WHERE country = 'USA';
```
where fined the row that's contins the country USA;

#### What is the difference between the VARCHAR and CHAR data types?

* CHAR: CHAR data type is take full space even we push some value.
  
  
 ```
 CREATE TABLE test1 (
  name CHAR(10)
);

INSERT INTO test1 VALUES ('Cat') 
Cat (7 spaces will be filled)
```



* VARCHAR: VARCHAR data type is take only needed space.

```
 CREATE TABLE test1 (
  name VARCHAR(10)
);
INSERT INTO test1 VALUES ('Cat') 
Cat (keep only three letters)
```

* CHAR: Automatically fill in spaces.
* VARCHAR: Nothing adds up.

