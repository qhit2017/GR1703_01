SELECT *FROM Course 
SELECT * FROM SC 
SELECT * FROM Student
UPDATE Student SET Sdept ='计算机科学系' WHERE Sno ='101'
--1、查询全体学生的学号与姓名。
SELECT a.Sno ,a.Sname
FROM Student a 
--2、查询全体学生的姓名、学号、所在系。
SELECT a.Sname,a.Sno ,a.Sdept
FROM Student a 
--3、查全体学生的姓名及其出生年份。
SELECT a.Sname ,(2017-a.Sage) AS '出生年份' 
FROM Student a
--4、查询选修了课程的学生学号（即有选修记录）。
SELECT a.Sno
FROM SC a
where a.Cno IS NOT NULL 
--5、查询计算机科学系全体学生的名单。
SELECT *
FROM Student a
where a.Sdept LIKE '计算机科学系'
--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT a.Sname ,a.Sage
FROM Student a
WHERE a.Sage <'20'
--7、查询考试成绩有不及格的学生的学号。
SELECT a.Sno
FROM SC a
WHERE a.Grade <'60'
--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT a.Sname ,a.Sdept ,a.Sage
FROM Student a 
WHERE a.Sage BETWEEN 18 AND 22
--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT a.Sname ,a.Sdept ,a.Sage
FROM Student a 
WHERE a.Sage NOT BETWEEN 20 AND 23
--10、查询信息系（IS）、信息系（MA）和信息系（CS）学生的姓名和性别。
SELECT a.Sname ,a.Ssex
FROM Student a
where a.Sdept LIKE 'MA' OR a.Sdept LIKE 'IS' OR a.Sdept LIKE 'CS'
--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT a.Sname ,a.Ssex
FROM Student a
where  a.Sdept NOT IN ('计算机科学系','信息系','信息系')
--12、查询学号为09102040203的学生的详细情况。
SELECT *
FROM Student a INNER JOIN SC b ON a.Sno LIKE b.Sno
where a.Sno LIKE '101'
--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT a.Sname ,a.Sno ,a.Ssex
FROM Student a
where a.Sname LIKE '钱%'
--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT a.Sname
FROM Student a
where a.Sname LIKE '李__'
--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT a.Sname,a.Sno
FROM Student a
where a.Sname LIKE '_丽%'
--16、查询所有不姓“陈”的学生姓名。
SELECT a.Sname
FROM Student a
where a.Sname NOT LIKE '李%'
--17、查询DB_Design课程的课程号和学分。
SELECT a.Cno ,a.Ccredit
FROM Course a
where a.CName LIKE 'DB_Design'
--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT a.Sno ,a.Cno
FROM SC a
where a.Grade IS NULL
--19、查所有有成绩的学生学号和课程号。
SELECT a.Sno ,a.Cno
FROM SC a
where a.Grade IS  NOT NULL
--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。
SELECT a.Sno ,a.Grade
FROM SC a
where a.Cno LIKE '3'
ORDER BY a.Grade DESC
--21、	查询全体学生情况，查询结果按所在系号升序排列，同一系中的学生按年龄降序排列。
SELECT *
FROM Student a
ORDER BY a.Sdept, a.Sage DESC
--22、	查询学生总人数。
SELECT COUNT(*)AS '总人数' 
FROM Student 
--23、	查询选修了数学课程的学生人数。
SELECT COUNT(*)AS'选修了数学课程的学生人数' 
FROM SC a
where a.Cno IN (SELECT b.Cno FROM Course b WHERE b.CName LIKE '数学')
--24、	计算1号课程的学生平均成绩。
SELECT AVG(a.Grade)AS'平均成绩' 
FROM SC a
where a.Cno LIKE '1'
--25、	查询选修1号课程的学生最高分数。
SELECT max(a.Grade)AS'最高成绩' 
FROM SC a
where a.Cno LIKE '1'
--26、	查询学号为200215121的学生选修课程的总学分数。
SELECT SUM(a.Grade) 
FROM SC a
where a.Sno LIKE '101' 
--27、	求各个课程号及相应的选课人数。
SELECT a.Cno ,COUNT(a.Sno)AS '人数'  
FROM SC a
group BY a.Cno
--28、	查询选修了3门以上课程的学生学号。
SELECT a.Sno,a.Sno
FROM SC a
GROUP BY a.Sno,a.Cno
HAVING COUNT(a.Cno)>3 