--1.	查询全体学生的学号与姓名。

SELECT a.sno,a.sname
from student a

--2.	查询全体学生的姓名、学号、专业。

SELECT a.sname,a.sno,a.sdept
from student a

--3.	查全体学生的姓名及其年龄。

SELECT a.sname,a.sage
from student a

--4.	查询“计算机科学”专业全体学生的名单。

SELECT a.sname
from student a
WHERE a.sdept='计算机科学'

--5.	查询所有年龄在20岁以下的学生姓名及其年龄。

SELECT a.sname,a.sage
from student a
WHERE a.sage<20

--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。

SELECT a.sname,a.sage,a.grade
from student a
WHERE a.sage<18
ORDER BY a.grade

--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。

SELECT a.sno
from student a
WHERE a.grade<60
ORDER BY a.grade DESC

--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。

SELECT a.sname,a.sdept,a.sage
from student a
WHERE a.sage>=18
AND a.sage<=22

--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。

SELECT a.sname,a.sdept,a.sage
from student a
WHERE a.sage<20
AND a.sage>23

--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。

SELECT a.sname,a.ssex
from student a
WHERE a.sdept='信息系(IS)'
OR a.sdept='数学系(MA)'
OR a.sdept='计算机科学系(CS)'

--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。

SELECT a.sname,a.ssex
from student a
WHERE a.sdept!='信息系'
OR a.sdept!='数学系'
OR a.sdept!='计算机科学系'

--12.	查询学号为09102040203的学生的详细情况。

SELECT *
from student a
WHERE a.sno='09102040203'

--13.	查询所有姓“张”学生的姓名、学号和性别。

SELECT a.sname,a.sno,a.ssex
from student a
WHERE a.sname LIKE '张%'

--14.	查询姓“李”且全名为三个汉字的学生的姓名。

SELECT a.sname
from student a
WHERE a.sname LIKE '李__'

--15.	查询名字中第2个字为“丽”字的学生的姓名和学号。

SELECT a.sname,a.sno
from student a
WHERE a.sname LIKE '_丽%'

--16.	查询所有不姓“陈”的学生姓名。

SELECT a.sname
from student a
WHERE a.sname NOT LIKE '陈%'