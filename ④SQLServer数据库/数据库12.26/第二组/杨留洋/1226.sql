SELECT  * FROM student 
select * FROM Course 
select * FROM SC 
--1、查询全体学生的学号与姓名。
select a.sno,a.sname
from student a 



--2、查询全体学生的姓名、学号、所在系。
select a.sname,a.sno,a.sdept
from student a





--3、查全体学生的姓名及其出生年份。
select a.sname,a.sage
from student a



--4、查询选修了课程的学生学号（即有选修记录）。
select a.sdept,a.sno
from student a INNER JOIN SC s ON a.sno=s.sno




--5、查询计算机科学系全体学生的名单。
select a.*
from student a
WHERE a.sdept='cs'



--6、查询所有年龄在20岁以下的学生姓名及其年龄。
select a.sname,a.sage
from student a
WHERE a.sage<20



--7、查询考试成绩有不及格的学生的学号。
select a.sno
from SC  a
WHERE a.grade<50



--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
select a.sname,a.sdept,a.sage
from student a
WHERE a.sage IN (18,22)

--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
select a.sname,a.sdept,a.sage
from student a
WHERE a.sage NOT BETWEEN 20 AND 23

--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
select a.sname,a.ssex
from student a
WHERE a.sdept IN ('is','ma','cs')


--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
select a.sname,a.ssex
from student a
WHERE a.sdept NOT IN ('is','ma','cs')

--12、查询学号为09102040203的学生的详细情况。
select a.*
from student a
WHERE a.sno='09102040203'

--13、查询所有姓“张”学生的姓名、学号和性别。
select a.sname,a.sno,a.ssex
from student a
WHERE a.sname LIKE '张%'

--14、查询姓“李”且全名为三个汉字的学生的姓名。
select a.sname
from student a
WHERE a.sname LIKE '李__'

--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
select a.sname,a.sno
from student a
WHERE a.sname LIKE '_丽%'

--16、查询所有不姓“陈”的学生姓名。
select a.sname
from student a
WHERE a.sname not LIKE '陈%'

--17、查询DB_Design课程的课程号和学分。

--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
select a.sno,a.cno
from SC a
WHERE a.grade=NULL 

--19、查所有有成绩的学生学号和课程号。
select a.sno,a.cno
from SC a
WHERE a.grade IS NOT null

--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。
select a.sno,a.grade
from sc a
WHERE a.cno='3'
ORDER BY a.grade DESC 

--21、	查询全体学生情况，查询结果按所在系号升序排列，同一系中的学生按年龄降序排列。



--22、	查询学生总人数。
select COUNT(*) as '总人数'
from student a



--23、	查询选修了数学课程的学生人数。
select  COUNT(*) 
from Course a
WHERE a.cname='数学'


--24、	计算1号课程的学生平均成绩。
select AVG(a.grade) 
from SC a
where a.cno='1'



--25、	查询选修1号课程的学生最高分数。
select max(a.grade)
from SC a
WHERE a.cno='1'



--26、	查询学号为200215121的学生选修课程的总学分数。


--27、	求各个课程号及相应的选课人数。



--28、	查询选修了3门以上课程的学生学号。



