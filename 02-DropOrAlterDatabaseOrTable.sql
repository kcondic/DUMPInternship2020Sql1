drop database DUMPInternshipSQLLearning

create table Test(Id int NOT NULL)

drop table Test

alter table Grades add EnteredOn datetime2 NOT NULL

alter table Grades add Test int

alter table Grades drop column Test

alter table Students alter column IndexNumber nvarchar(10)
