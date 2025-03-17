-- To create Database write DDL query/statement
-- Syntax : create database userdefined_database_name

create database example_db1

select name from master.sys.databases 
select * from master.sys.master_files

-- call store procedure to get list of db

exec sp_databases 

select name as DATABASE_Name,size as DATABASE_SIZE,physical_name as Location from master.sys.master_files


--Alter Database with name 

alter database example_db1 modify name = MarchDB

--delete db from physical path

--drop database MarchDB

-- test databse is exists at location before deletion 

drop database if exists MarchDB 
