USE [NewDataBase]
GO

/****** Object:  StoredProcedure [dbo].[FillOutGradeTable]    Script Date: 10/19/2013 2:05:58 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[FillOutGradeTable]

AS
BEGIN
SELECT people.id
, people.Lname as "Last Name"
, People.Fname as "First Name"
, Grades.Value
, Grades.ActivityId
, Activities.ActivityName as Exam
FROM people, Grades, Activities where People.Id = Grades.PersonId
and Grades.ActivityId = Activities.Id
order by ActivityName
END
GO

