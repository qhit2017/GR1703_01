SELECT * FROM student s

SELECT * FROM Courses c

SELECT * FROM sc d
--1、查询全体学生的学号与姓名
SELECT s.sno ,s.sname
from student s

--2、查询全体学生的姓名、学号、所在系
SELECT s.sname,s.sno,s.sdept
from student s

--3、查全体学生的姓名及其出生年份
SELECT s.sname,s.sage
from student s

--4、查询选修了课程的学生学号（即有选修记录）
SELECT s.sno
from Courses c INNER JOIN student s
ON c.Cno=s.sno

--5、查询计算机科学系全体学生的名单
SELECT *
from student s
WHERE s.sdept='计算机科学'

--6、查询所有年龄在20岁以下的学生姓名及其年龄
SELECT s.sname,s.sage
from student s
WHERE s.sage<20

--7、查询考试成绩有不及格的学生的学号
SELECT s.sno
from student s INNER JOIN sc c
ON c.cno=s.sno
AND c.Grade<60
--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄

SELECT s.sname,s.sdept,s.sage
from student s
WHERE s.sage BETWEEN 18 AND 22

--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别

SELECT s.sname,s.ssex
from student s INNER JOIN Courses c
on c.Cno=s.sno
AND s.sdept='信息系'

--11、查询姓“李”且全名为三个汉字的学生的姓名
SELECT s.sname
from student s
where s.sname='李__'
--12、查询所有姓“张”学生的姓名、学号和性别

SELECT s.sname,s.sno,s.ssex
from student s
WHERE s.sname='张__'
--13、查询所有不姓“陈”的学生姓名
SELECT s.sname
from student s
where s.sname NOT  LIKE'陈'

--14、查询名字中第2个字为“丽”字的学生的姓名和学号
SELECT s.sname,s.sno
from student s
WHERE s.sname='%丽%'

--15、	查询学生总人数
SELECT COUNT(*) as'总人数'
from student s

--16、查所有有成绩的学生学号和课程号
SELECT s.sno,c.Cno
from student s INNER JOIN Courses c
INNER JOIN sc a
on a.cno=c.Cno
AND a.Grade is NOT NULL ;
--17、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT s.sname,s.sdept,s.sage
from student s
where s.sage NOT BETWEEN 20 AND 23 

--18.查询学号为09102040203的学生的详细情况。

SELECT COUNT(*)
from student s INNER JOIN sc c
on s.sno=c.sno
AND c.sno=1