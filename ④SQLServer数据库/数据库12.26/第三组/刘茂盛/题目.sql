--1、查询全体学生的学号与姓名。
SELECT a.sno,a.sname
from student a


--2、查询全体学生的姓名、学号、所在系。
SELECT a.sname,a.sno,a.sdept
from student a

--3、查全体学生的姓名及其出生年份。
SELECT a.sname,(2017-a.sage)as'出生年份'
from student a


--4、查询选修了课程的学生学号（即有选修记录）。
SELECT s.sno
from student s LEFT JOIN SC a on s.sno=a.sno
	LEFT JOIN course c ON a.cno=c.cno
	AND c.cname is not NULL 
	
--5、查询JAVA系全体学生的名单。
SELECT s.sname
from student s INNER join SC a on s.sno=a.sno
	INNER JOIN course c on c.cno=a.cno
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

--17、查询DB_Design课程的课程号和学分。
SELECT c.cno,a.grade
from student s INNER JOIN SC a ON s.sno=a.sno
	INNER JOIN course c on c.cno=a.cno
	AND c.cname='DB_Design'

--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT s.sno,c.cno
from student s LEFT JOIN SC a ON s.sno=a.sno
	INNER JOIN course c on c.cno=a.cno
	AND a.grade IS NULL


--19、查所有有成绩的学生学号和课程号。
SELECT s.sno,c.cno
from student s INNER JOIN SC a on s.sno=a.sno
	INNER JOIN course c on a.cno=c.cno
	AND a.grade IS NOT NULL

--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。
SELECT s.sno,a.grade
from student s INNER JOIN SC a on s.sno=a.sno
	INNER JOIN course c on a.cno=c.cno
	AND c.cno='3'

--21、	查询全体学生情况，查询结果按所在系号升序排列，同一系中的学生按年龄降序排列。
SELECT *
from student s
ORDER BY s.sdept,s.sage DESC


--22、	查询学生总人数。
SELECT COUNT(*)as'总人数'
from student

--23、	查询选修了数学课程的学生人数。
SELECT COUNT(*)
from student s INNER JOIN SC a on s.sno=a.sno
	INNER JOIN course c on c.cno=a.cno
	AND c.cname='数学'
	
SELECT *
from student s INNER JOIN SC a on s.sno=a.sno
	INNER JOIN course c on c.cno=a.cno

--24、	计算1号课程的学生平均成绩。
SELECT AVG(a.grade) 
from student s INNER JOIN SC a on s.sno=a.sno
	INNER JOIN course c on c.cno=a.cno
	AND c.cno='1'

--25、	查询选修1号课程的学生最高分数。
SELECT max(a.grade) 
from student s INNER JOIN SC a on s.sno=a.sno
	INNER JOIN course c on c.cno=a.cno
	AND c.cno='1' 

--26、	查询学号为200215121的学生选修课程的总学分数。

SELECT  SUM(c.ccredit) as'学分'
from student s INNER JOIN SC a on s.sno=a.sno
	INNER JOIN course c on c.cno=a.cno
	AND s.sno='200215121'

--27、	求各个课程号及相应的选课人数。
SELECT c.cno as'课程号',COUNT(*) as'人数'
from student s INNER JOIN SC a on s.sno=a.sno
	INNER JOIN course c on c.cno=a.cno
	GROUP BY c.cno


--28、	查询选修了3门以上课程的学生学号。

SELECT a.sno
from student s INNER JOIN SC a on s.sno=a.sno
	INNER JOIN course c on c.cno=a.cno
	GROUP BY a.sno
	HAVING COUNT(*) >2

