create database College

use College

CREATE TABLE Students (
    Id int NOT NULL PRIMARY KEY,
	FirstName nvarchar(100) NOT NULL,
	LastName nvarchar(100) NOT NULL,
	IndexNumber nvarchar(8)
); 

CREATE TABLE Courses (
    Id int NOT NULL PRIMARY KEY,
	Name nvarchar(100) NOT NULL
); 

CREATE TABLE Professors (
    Id int NOT NULL PRIMARY KEY,
	FirstName nvarchar(100) NOT NULL,
	LastName nvarchar(100) NOT NULL,
	Title nvarchar(30)
); 

CREATE TABLE Grades (
    Id int NOT NULL PRIMARY KEY,
    Mark int NOT NULL CHECK(Mark BETWEEN 1 AND 5),
    StudentId int FOREIGN KEY REFERENCES Students(Id) NOT NULL,
	CourseId int FOREIGN KEY REFERENCES Courses(Id) NOT NULL
); 

CREATE TABLE CourseProfessors
(
  CourseId int FOREIGN KEY REFERENCES Courses(Id) NOT NULL,
  ProfessorId int FOREIGN KEY REFERENCES Professors(Id) NOT NULL,
  CONSTRAINT CourseProfessorsPrimaryKey PRIMARY KEY (CourseId, ProfessorId),
);