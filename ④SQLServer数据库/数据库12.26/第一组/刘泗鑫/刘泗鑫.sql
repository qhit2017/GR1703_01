--1、查询全体学生的学号与姓名。
SELECT s.sno,s.sname
FROM student s

--2、查询全体学生的姓名、学号、所在系。
SELECT s.sname,s.sno,s.sdept
from student s

--3、查全体学生的姓名及其出生年份。
--        无

--4、查询选修了课程的学生学号（即有选修记录）。
SELECT s.sno
from student s
WHERE s.sdept IS NOT NULL

--5、查询计算机科学系全体学生的名单。
SELECT *
FROM student s
WHERE s.sdept = 'CS'

--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT s.sname,s.ssex
from student s
WHERE s.sage < 20

--7、查询考试成绩有不及格的学生的学号。
SELECT s.sno
from student s INNER JOIN sc c ON s.sno = c.sno
AND c.grade <60

--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT s.sname,s.sdept,s.sage
from student s
WHERE s.sage BETWEEN 18 AND 22

--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT s.sname,s.sdept,s.sage
from student s
WHERE s.sage NOT BETWEEN 19 AND 22

--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT s.sname,s.ssex
from student s
WHERE s.sdept IN ('IS','MA','CS')

--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT s.sname,s.ssex
FROM student s
WHERE s.sdept NOT IN ('IS','MA','cs')

--12、查询学号为09102040203的学生的详细情况。
SELECT *
FROM student s
WHERE s.sno = 09102040203

--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT  s.sname,s.sno,s.ssex
from student s
WHERE s.sname LIKE '张%'

--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT s.sname
from student s
WHERE s.sname LIKE '李__'

--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT s.sname,s.sno
from student s
WHERE s.sname LIKE '_丽%'

--16、查询所有不姓“陈”的学生姓名。
SELECT s.sname
from student s
WHERE s.sname NOT LIKE '陈%'

--17、查询DB_Design课程的课程号和学分。
SELECT c.cno,c.ccredit
from course c 
WHERE c.cname = 'DB_Design'

--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT s.sno,c.cno
from student s INNER JOIN sc a ON s.sno = a.sno INNER JOIN course c ON a.cno = c.cno
WHERE a.grade IS NULL AND a.grade = 0

--19、查所有有成绩的学生学号和课程号。
SELECT s.sno,s.cno
from sc s
WHERE s.grade IS NOT NULL AND s.grade = 0

--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。
SELECT s.sno,s.grade
from sc s
WHERE s.cno = 3
ORDER BY s.grade DESC

--21、	查询全体学生情况，查询结果按所在系号升序排列，同一系中的学生按年龄降序排列。
SELECT *
from student s
ORDER BY s.sdept,s.sage DESC

--22、	查询学生总人数。
SELECT COUNT(*) AS '人数'
from student s 

--23、	查询选修了数学课程的学生人数。
SELECT count(*) AS '人数'
from student s
WHERE s.sdept = 'MA'

--24、	计算1号课程的学生平均成绩。
SELECT AVG(s.grade) AS '平均成绩'
from sc s
WHERE s.cno = 1

--25、	查询选修1号课程的学生最高分数。
SELECT MAX(s.grade) AS '最高分'
from sc s
WHERE s.cno = 1

--26、	查询学号为200215121的学生选修课程的总学分数。
SELECT SUM(s.grade) AS '总分数'
from sc s
WHERE s.sno = 200215121

--27、	求各个课程号及相应的选课人数。
SELECT c.cno,COUNT(*) 
from sc s RIGHT JOIN course c ON s.cno = c.cno
GROUP BY c.cno

--28、	查询选修了3门以上课程的学生学号。
SELECT s.sno
from sc s
GROUP BY s.sno
HAVING COUNT(*)>3
