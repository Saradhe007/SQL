-- create table using give schema

use Sara_db

create table Employee(
emp_id int,
emp_name  varchar(max),
mobilenum bigint,
email varchar(max),
dob date,
license varchar(50),

)

--alter the table by adding or removing columns 
---add some columns
alter table Training Add email varchar(50) null
alter table Training alter column name varchar(max) null

-- delete column from table

alter table Training drop column email

--alter table by adding primary key

alter table Employee1 alter column emp_id int not null

alter table Employee1 add constraint PK_Id primary key(emp_id) 


create table Employeesalary(
salaryId int primary key not null
)

--delete table from database
drop table Employeesalary

---add new record in table 
insert into Employee1(emp_id,emp_name,mnum,email,license)
values(103,'Saradhe',933454532,'xya@gmail.com','psp777')

--retrieve all records from table

select emp_id ,emp_name, mnum,email,license from Employee1
select * from  Employee1



--filter records by id=103
select * from Employee1 where emp_id=103


--formatting result set
select e.emp_id as Employee_ID , e.emp_name as Employee_Name , e.mnum as Employee_MobileNumber,
e.email as Employee_EmailID,
e.passport as Employee_Passport
from Employee1 e

--altering or updating record with id=102

update Employee1 set emp_name ='Jimin',mnum=987655445,license='lic777',passport='passSA77'
where emp_id =101

select  * from Employee1

--remove record from table

delete from Employee1 where emp_id = 102
