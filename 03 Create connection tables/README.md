# Connection tables

In this part we will create connection tables, which are the same tables that were seen in the previous part, but now the idea of creating these tables is to join the previous tables, this gives us the possibility of separating the information in different tables and if we want the information we only call through the connection tables.

```TSQL
CREATE TABLE CourseProfessor(
	idCourse INT,
	idProfessor INT,
	section CHAR(1)
)
```

In this part we are going to create five connection tables:

* Student-Career 
* Student-Course-State
* Score-Student-Course
* Professor-Specialty
* Course-Profesoor
