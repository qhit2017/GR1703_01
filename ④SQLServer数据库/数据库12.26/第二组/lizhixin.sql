--1、查询全体学生的学号与姓名。
SELECT Sno,Sname
from student 

--2、查询全体学生的姓名、学号、所在系。
SELECT Sname ,Sno,Sdept
from student 

--3、查全体学生的姓名及其出生年份。
SELECT Sname ,2017-Sage AS '出生年份'
from student 

--4、查询选修了课程的学生学号（即有选修记录）。
SELECT b.Sno
from  Course a INNER JOIN student  b ON a.Cno=b.Sno

--5、查询计算机科学系全体学生的名单。
SELECT b.*
from  Course a INNER JOIN student  b ON a.Cno=b.Sno
WHERE a.Cname='计算机科学'

--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT Sname,Sage
from student
WHERE Sage <20

--7、查询考试成绩有不及格的学生的学号。
SELECT b.Sno
from sc1 a INNER JOIN student b ON a.Sno =b.Sno
WHERE a.Grade<60

--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT 
from 

9、查询年龄不在20~23岁之间的学生姓名、系别和年龄

10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。

11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。

12、查询学号为09102040203的学生的详细情况。

13、查询所有姓“张”学生的姓名、学号和性别。

14、查询姓“李”且全名为三个汉字的学生的姓名。

15、查询名字中第2个字为“丽”字的学生的姓名和学号。

16、查询所有不姓“陈”的学生姓名。

--17、查询DB_Design课程的课程号和学分。
SELECT Cno,Ccredit
from Course
WHERE Cname='DB_Design'


--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT  c.Sno,b.Cname
from sc1 a LEFT  JOIN  Course b ON a.Cno =b.Cno  inner JOIN student c ON a.Sno =c.Sno
WHERE a.Grade IS NULL


--19、查所有有成绩的学生学号和课程号。

--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。

---21、	查询全体学生情况，查询结果按所在系号升序排列，同一系中的学生按年龄降序排列。

22、	查询学生总人数。

23、	查询选修了数学课程的学生人数。

24、	计算1号课程的学生平均成绩。

--25、	查询选修1号课程的学生最高分数。


--26、	查询学号为200215121的学生选修课程的总学分数。
SELECT SUM(a.Ccredit) 
from Course a INNER JOIN sc1 b ON a.Cno =b.Cno INNER JOIN student c ON c.Sno =b.Sno
WHERE  c.Sno='200215121'


--27、	求各个课程号及相应的选课人数。
SELECT COUNT(*) 
from Course a INNER JOIN sc1 b ON a.Cno =b.Cno INNER JOIN student c ON c.Sno =b.Sno
GROUP BY a.Cno


--28、	查询选修了3门以上课程的学生学号。
SELECT c.Sno ,COUNT(*) AS '数量'
from Course a INNER JOIN sc1 b ON a.Cno =b.Cno INNER JOIN student c ON c.Sno =b.Sno

GROUP BY c.Sno
HAVING COUNT(a.Cname)>3




