--1.查询全体学生的学号与姓名。
SELECT a.Sno,a.Sname
from Student1 a

--2.查询全体学生的姓名、学号、专业。
SELECT b.Sname,b.Sno,b.Sdept
from Student1 b

--3.查询全体学生的姓名及其年龄。
SELECT c.Sname,c.Sage
from Student1 c

--4.查询“计算机科学”专业全体学生的名单。
SELECT *
FROM Student1 WHERE Sdept='计算机科学'

--5.查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT d.Sname,d.Sage
from Student1 d WHERE d.Sage<20

--6.查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
SELECT e.Sname,e.Sage,e.Grade
from Student1 e WHERE e.Sage>=18 ORDER BY e.Grade

--7.查询成绩有不及格的学生的学号，并按照成绩降序排列。
SELECT f.Sno
from Student1 f WHERE f.Grade<60 ORDER BY f.Grade DESC

--8.查询年龄在18-22岁（包括18和22岁）之间的学生的姓名、专业和年龄。
SELECT g.Sname,g.Sdept,g.Sage
from Student1 g WHERE g.Sage>=18 AND g.Sage<=22

--9.查询年龄不在20-23岁之间的学生姓名、专业和年龄。
SELECT h.Sname,h.Grade,h.Sage
from Student1 h WHERE h.Sage<20 AND h.Sage>23

--10.查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT i.Sname,i.Ssex
from Student1 i WHERE i.Sdept='IS' OR i.Sdept='MA' OR i.Sdept='CS'

--11.查询既不是信息系、数学系，也不是计算机科学系的学生的姓名性别。
SELECT j.Sname,j.Ssex
from Student1 j WHERE j.Sdept='IS' AND j.Sdept='MA' AND j.Sdept='CS'

--12.查询学号为09102040203的学生的详细情况。
SELECT *
FROM Student1 WHERE Sno='09102040203'

--13.查询所有姓“张”学生的姓名、学号和性别。
SELECT k.Sname,k.Sno,k.Ssex
from Student1 k WHERE k.Sname LIKE '张%'

--14.查询姓“李”且全名为三个汉字的学生的姓名。
SELECT l.Sname
from Student1 l WHERE l.Sname LIKE '李__'

--15.查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT m.Sname,m.Sno
from Student1 m WHERE m.Sname LIKE '_丽%'

--16.查询所有不姓“陈”的学生姓名。
SELECT n.Sname
from Student1 n WHERE n.Sname NOT LIKE'陈%'