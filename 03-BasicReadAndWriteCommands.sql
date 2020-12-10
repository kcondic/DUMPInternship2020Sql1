INSERT INTO Students(FirstName, LastName, IndexNumber) VALUES
('Stipe', 'Stipić', '225-2014'),
('Ivan', 'Ivić', '105-2019'),
('Darko', 'Darić', '15-2017'),
('Marin', 'Marić', '320-2018'),
('Josip', 'Josipović', '984-2014')

select * from students

INSERT INTO Courses(Name) VALUES
('Mehanika 1'),
('Termodinamika'),
('Primijenjeno strojarstvo'),
('Mehatronika'),
('Materijali 2')

INSERT INTO Grades(Mark, StudentId, CourseId, EnteredOn) VALUES
(4, 1, 1, GETDATE()),
(3, 1, 2, GETDATE()),
(2, 1, 3, GETDATE()),
(1, 1, 4, GETDATE()),
(5, 2, 3, GETDATE()),
(5, 2, 5, GETDATE()),
(3, 3, 2, GETDATE()),
(2, 3, 4, GETDATE()),
(2, 3, 3, GETDATE()),
(3, 4, 2, GETDATE()),
(1, 4, 5, GETDATE()),
(5, 4, 1, GETDATE()),
(4, 5, 1, GETDATE())

INSERT INTO Professors(FirstName, LastName, Title) VALUES
('Marko', 'Markić', 'dr. sc.'),
('Ivana', 'Ivančević', NULL),
('Teo', 'Teovski', 'mr.dr.ing.')

INSERT INTO CourseProfessors(CourseId, ProfessorId) VALUES
(1, 1),
(5, 3),
(1, 3),
(2, 2),
(3, 3),
(2, 1),
(5, 1),
(4, 2)

SELECT * FROM Students WHERE LastName = 'Stipić'

SELECT FirstName FROM Students WHERE LastName = 'Stipić'

SELECT FirstName, LastName FROM Students WHERE LastName = 'Stipić'

SELECT * FROM Grades

SELECT * FROM Grades WHERE Mark BETWEEN 2 AND 5

SELECT * FROM Grades WHERE Mark IN (2, 4)

SELECT * FROM Grades WHERE Mark = 4 AND StudentId = 1 OR CourseId = 3

SELECT * FROM Students WHERE LastName LIKE '%pic'

SELECT * FROM Students ORDER BY LastName

SELECT * FROM Students ORDER BY LastName DESC

UPDATE Professors SET LastName = 'Ivković'

UPDATE Professors SET LastName = 'Barbarić' WHERE Id = 2

SELECT * FROM Professors

DELETE FROM Grades

DELETE FROM Grades WHERE StudentId = 1

SELECT * FROM Grades