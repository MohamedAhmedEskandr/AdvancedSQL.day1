use ITI
--1
SELECT COUNT(*) FROM Stud_Course WHERE St_Id IS NOT NULL;

--2
SELECT DISTINCT Ins_Name  FROM Instructor;

--3
SELECT s.St_Id, ISNULL(s.St_Fname + ' ' + s.St_Lname, 'Unknown') AS Student_Full_Name, 
                ISNULL(d.Dept_Name, 'Unknown') AS Department_name
FROM Student s LEFT JOIN Department d ON s.Dept_Id = d.Dept_Id;

--4
SELECT i.Ins_Name, d.Dept_Name
FROM Instructor i LEFT JOIN Department d ON i.Dept_Id = d.Dept_Id;

--5
SELECT CONCAT(s.St_Fname, ' ', s.St_Lname) AS full_name, c.Crs_Name
FROM Student s JOIN Stud_Course sc 
ON s.St_Id = sc.St_Id
JOIN Course c 
ON sc.Crs_Id = c.Crs_Id;

--6
SELECT t.Top_Name, COUNT(c.Crs_Id) AS number_of_courses
FROM Topic t LEFT JOIN Course c
ON t.Top_Id = c.Top_Id
GROUP BY t.Top_Name;

--7
SELECT MAX(Salary) AS max_salary, MIN(Salary) AS min_salary
FROM Instructor;

--8
SELECT * FROM Instructor
WHERE salary < (SELECT AVG(salary) FROM Instructor);

--9
SELECT d.Dept_Name
FROM Department d JOIN Instructor i 
ON d.Dept_Id = i.Dept_Id
WHERE i.salary = (SELECT MIN(salary) FROM Instructor);

--10
SELECT TOP (2) * FROM Instructor ORDER BY salary DESC;

--11
SELECT Ins_Name, COALESCE(CAST(salary AS VARCHAR(20)), 'instructor bonus') AS salary_or_bonus
FROM instructor;

--12
SELECT AVG(salary) FROM instructor;

--13
SELECT s.St_Fname, sp.*
FROM Student s LEFT JOIN Instructor sp 
ON s.St_super = sp.Ins_Id;


--14
 SELECT *, ROW_NUMBER() OVER (PARTITION BY i.Dept_id ORDER BY i.salary DESC) AS rank_in_department
FROM instructor i WHERE i.salary IS NOT NULL

--15
SELECT *, ROW_NUMBER() OVER (PARTITION BY Dept_id ORDER BY NEWID()) AS RN
FROM Student






