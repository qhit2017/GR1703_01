
INSERT INTO student VALUES(200215121,'李勇','男',20,'cs');
INSERT INTO student VALUES(200215122,'刘晨','女',19,'cs');
INSERT INTO student VALUES(200215123,'王敏','女',18,'ma');
INSERT INTO student VALUES(200515125,'张立','男',19,'is');


SELECT * FROM student


INSERT INTO course VALUES(1,'数据库',4);
INSERT INTO course VALUES(2,'数学',2);
INSERT INTO course VALUES(3,'信息系统',4);
INSERT INTO course VALUES(4,'操作系统',3);
INSERT INTO course VALUES(5,'数据结构',4);
INSERT INTO course VALUES(6,'数据处理',2);
INSERT INTO course VALUES(7,'PASCAL语言',4);

INSERT INTO sc VALUES (200215121,1,92);
INSERT INTO sc VALUES (200215121,2,85);
INSERT INTO sc VALUES (200215121,3,88);
INSERT INTO sc VALUES (200215122,2,90);
INSERT INTO sc VALUES (200215122,3,80);

--1、查询全体学生的学号与姓名。
SELECT a.sno,a.sname 
from student a

--2、查询全体学生的姓名、学号、所在系。
SELECT a.sname,a.sno,a.sdept
from student a

--3、查全体学生的姓名及其出生年份。
SELECT a.sname,a.sage
from student a

--4、查询选修了课程的学生学号（即有选修记录）。
SELECT a.sno
from student a
WHERE a.sdept IS NOT NULL 

--5、查询计算机科学系全体学生的名单。
SELECT *
from student a
where a.sdept='cs'

--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT a.sname,a.sage
from student a
where a.sage<20

--7、查询考试成绩有不及格的学生的学号。
SELECT a.sno
from sc a 
WHERE a.grade<60

--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT a.sname,a.sdept,a.sage
from student a
where a.sage BETWEEN 18 AND 22

--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT a.sname,a.sdept,a.sage
from student a
where a.sage NOT BETWEEN 18 AND 22

--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT a.sdept,a.sname,a.ssex
from student a
GROUP BY a.sdept,a.sname,a.ssex

--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT a.sname,a.ssex,a.sdept
from student a
WHERE a.sdept NOT in ('is','ma','cs')

--12、查询学号为09102040203的学生的详细情况。
SELECT *
from student a
where a.sno='09102040203'

--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT a.sname,a.sno,a.ssex
from student a
where a.sname LIKE '张%'

--14、查询姓“李”且全名为三个汉字的学生的姓名。	 
SELECT a.sname
from student a
WHERE a.sname LIKE '李__'

--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT a.sname,a.sno
from student a
where a.sname LIKE '_丽%'

--16、查询所有不姓“陈”的学生姓名。
SELECT a.sname
from student a
where a.sname NOT LIKE '陈%'

--17、查询DB_Design课程的课程号和学分。
SELECT a.cno,a.ccredit
from course a
where a.cname ='DB_Design'

--18、某些学生选修课程后没有参加考试，所以有选课记录，
--    但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT  a.sno,a.cno
from sc a
WHERE a.grade IS NULL

--19、查所有有成绩的学生学号和课程号。      
SELECT a.sno,a.cno
from sc a
where a.grade IS NOT NULL

--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。
SELECT a.sno,a.grade
from sc a
WHERE a.cno=3
ORDER BY a.grade DESC

--21、	查询全体学生情况，查询结果按所在系号升序排列，	
--      同一系中的学生按年龄降序排列。
SELECT *
from student a
ORDER BY a.sdept ASC ,a.sage DESC

--22、	查询学生总人数。
SELECT COUNT(*) as '总人数'
from student a

--23、	查询选修了数学课程的学生人数。
SELECT count(*)
from  course a
where a.cname='数学'

--24、	计算1号课程的学生平均成绩。
SELECT avg(a.grade) as '平均成绩'
from sc a
WHERE a.cno=1

--25、	查询选修1号课程的学生最高分数。
SELECT max(a.grade) as '最高分数'
from sc a
where a.cno=1

--26、	查询学号为200215121的学生选修课程的总学分数。
SELECT sum(c.ccredit) as '总学分数'
from sc o INNER JOIN course c ON o.cno=c.cno
AND o.sno='200215121'

--27、	求各个课程号及相应的选课人数。
SELECT a.cno, COUNT(a.sno) as '选课人数'
from sc a
GROUP BY a.cno

--28、	查询选修了3门以上课程的学生学号。
SELECT a.sno
from sc a
GROUP BY a.sno
HAVING count(a.cno)>3                                                                                                                                                                                                                                                                   
