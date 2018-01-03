--1、查询全体学生的学号与姓名。
SELECT a.sno,a.sname
from atudent a 
--2、查询全体学生的姓名、学号、所在系。
SELECT a.sname,a.sno,a.sdept
from atudent a 
--3、查全体学生的姓名及其出生年份。
SELECT a.sname,a.sage
from atudent a 
--4、查询选修了课程的学生学号（即有选修记录）。
SELECT a.sno
from atudent a INNER JOIN sc s ON a.sno =s.sno
AND s.sno IS NOT NULL 
--5、查询计算机科学系全体学生的名单。
SELECT a.sname
from atudent a 
WHERE a.sdept='计算机科学系'
--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT a.sname,a.sage
from atudent a 
WHERE a.sname <20
--7、查询考试成绩有不及格的学生的学号。
SELECT s.sno
from sc s 
WHERE s.grade<60
--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT a.sname ,a.sdept ,a.sage 
from atudent a 
WHERE a.sage BETWEEN 18 AND 22 
--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT a.sname ,a.sdept ,a.sage 
from atudent a 
WHERE a.sage NOT  BETWEEN 18 AND 22 
--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT a.sname,a.ssex 
from atudent a 
WHERE a.sdept IN ('IS','MA','CS')
--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT a.sname,a.ssex 
from atudent a 
WHERE a.sdept  not IN ('IS','MA','CS')
--12、查询学号为09102040203的学生的详细情况。
SELECT *
from atudent a 
WHERE a.sno='09102040203'
--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT a.sname,a.sno,a.ssex
from atudent a 
WHERE a.sname LIKE '张%'
--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT a.sname
from atudent a 
WHERE a.sname LIKE '李__'
--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT a.sname,a.sno
from atudent a 
WHERE a.sname LIKE '_丽%'
--16、查询所有不姓“陈”的学生姓名。
SELECT a.sname
from atudent a 
WHERE a.sname  not LIKE '陈%'
--17、查询DB_Design课程的课程号和学分。
SELECT c.con,c.ccredit
from course c 
WHERE c.cname='DB_Design'
--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT s.con ,s.sno
from sc s 
WHERE s.grade IS  NULL 
--19、查所有有成绩的学生学号和课程号。
SELECT s.con ,s.sno
from sc s 
WHERE s.grade IS NOT NULL 
--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。
SELECT s.con ,s.grade
from sc s 
WHERE s.con =3
ORDER BY s.grade  DESC 
--21、	查询全体学生情况，查询结果按所在系号升序排列，同一系中的学生按年龄降序排列。
SELECT *
from atudent a 
--22、	查询学生总人数。
SELECT COUNT(a.sno ) 
from atudent a 
--23、	查询选修了数学课程的学生人数。
SELECT COUNT(*) 
from course c 
WHERE c.cname='数学'
--24、	计算1号课程的学生平均成绩。
SELECT AVG(s.grade ) 
from sc s 
WHERE s.con=1
--25、	查询选修1号课程的学生最高分数。
SELECT MAX(s.grade)  
from sc s 
WHERE s.con=1
--26、	查询学号为200215121的学生选修课程的总学分数。
SELECT SUM(c.ccredit) 
from course c INNER JOIN sc s ON c.con=s.con
AND s.sno='200215121'
--27、	求各个课程号及相应的选课人数。
SELECT  s.con ,COUNT(s.con) as '人数'
from sc s 
GROUP BY s.con 
--28、	查询选修了3门以上课程的学生学号。
SELECT s.sno
from sc s 
GROUP BY s.con ,s.sno
HAVING COUNT(s.con )>3

