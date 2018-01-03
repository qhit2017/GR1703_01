--1、查询全体学生的学号与姓名。
SELECT a.sno,a.sname
from student a


--2、查询全体学生的姓名、学号、所在系。
SELECT b.sname,b.sno,b.sdept
from student b

--3、查全体学生的姓名及其出生年份。
SELECT c.sname,(2017-c.sage)as'出生年份'
from student c

--5、查询JAVA系全体学生的名单。
SELECT a.sname
from student a INNER join SC b on a.sno=b.sno
	INNER JOIN course c on b.cno=a.cno
	AND c.cname='JAVA'


--6、查询所有年龄在20岁以下的学生姓名及其年龄。
select a.sname,a.sage 
from student a WHERE a.sage<20

--7、查询考试成绩有不及格的学生的学号。
SELECT s.sno
from student s INNER JOIN SC a ON s.sno=a.sno
	AND a.grade<60

--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT s.sname,s.sdept,s.sage
from student s 
WHERE s.sage BETWEEN 18 AND 22

--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT s.sname,s.sdept,s.sage
from student s 
WHERE s.sage NOT BETWEEN 20 AND 23

--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT s.sname,s.ssex
from student s 
WHERE s.sdept IN ('IS','MA','CS')

--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT s.sname,s.ssex
from student s 
WHERE s.sdept NOT IN ('IS','MA','CS')

--12、查询学号为09102040203的学生的详细情况。
SELECT *
from student
WHERE sno='09102040203'

--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT a.sname,a.sno,a.ssex
from student a
WHERE a.sname LIKE '张%'

--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT sname
from student
WHERE sname LIKE '李__'
--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT sname,sno
from student
WHERE sname LIKE'_丽%'

--16、查询所有不姓“陈”的学生姓名。
SELECT sname
from student
WHERE sname NOT LIKE '陈%'


--22、	查询学生总人数。
SELECT COUNT(*)as'总人数'
from student



