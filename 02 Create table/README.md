# Create tables

## Table

A *table* is a main part of relational databases, because it allows us to aggregate data. This data has different types that limit the data entry in the table. In this case we will create 6 main tables (Career, Course, Professor, Specialty, State, Student).

```TSQL
CREATE TABLE Career(
	idCareer INT IDENTITY(1,1) NOT NULL,
	career VARCHAR(50) NOT NULL,
	PRIMARY KEY (idCareer)	
)
```

## Primary key

The primary key is a column that is used to relate to other tables, only the primary key has the ability to join tables.

## Identity (a, b)

The identity is a property that serves to list the date in order, starting with *a* and the following values will increase from *b* to *b*.
