 
INSERT INTO Student VALUES (200215121,'李勇','男',20,'CS')
INSERT INTO Student VALUES (200215122,'刘晨','女',19,'CS')
INSERT INTO Student VALUES (200215123,'王敏','女',18,'MA')
INSERT INTO Student VALUES (200215125,'张立','男',19,'IS')

INSERT INTO course VALUES (1,'数据库',4)
INSERT INTO course VALUES (2,'数学',2)
INSERT INTO course VALUES (3,'信息系统',4)
INSERT INTO course VALUES (4,'操作系统',3)
INSERT INTO course VALUES (5,'数据结构',4)
INSERT INTO course VALUES (6,'数据处理',2)
INSERT INTO course VALUES (7,'PASCAL语言',4)

INSERT INTO SC VALUES (200215121,1,92)
INSERT INTO SC VALUES (200215121,2,85)
INSERT INTO SC VALUES (200215121,3,88)
INSERT INTO SC VALUES (200215122,2,90)
INSERT INTO SC VALUES (200215122,3,80)
--1、查询全体学生的学号与姓名。
SELECT a.Sno,a.Sname 
from Student a





--2、查询全体学生的姓名、学号、所在系。
SELECT a.Sname,a.Sno,a.Sdept
from Student  a




--3、查全体学生的姓名及其出生年份。
SELECT a.Sname,a.Sage
from Student a

--4、查询选修了课程的学生学号（即有选修记录）。
SELECT  a.Sno
from Student a INNER JOIN sc b ON a.Sno=b.Sno





--5、查询计算机科学系全体学生的名单。
SELECT *
from Student a
where a.Sdept='CS'


--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT *
FROM Student a
where a.Sage<20

--7、查询考试成绩有不及格的学生的学号。
SELECT a.Sno
from Student a INNER JOIN SC b ON a.Sno=b.Sno
WHERE b.Grade<60

--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT a.Sname,a.Sdept,a.Sage
from Student a
WHERE a.Sage BETWEEN 18AND 22



--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT a.Sname,a.Sdept,a.Sage
from Student a
where a.Sage  NOT  BETWEEN 20AND 23

--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT a.Sname,a.Ssex
from Student a
where a.Sdept='IS' or a.Sdept='MA' or a.Sdept= 'CS'

--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT a.Sname,a.Ssex
from Student a
where  a.Sdept!='IS' and a.Sdept!='MA' AND  a.Sdept!= 'CS'

--12、查询学号为09102040203的学生的详细情况。
SELECT *
FROM Student a
WHERE a.Sno=09102040203

--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT a.Sname,a.Sno,a.Ssex
from Student a
WHERE a.Sname LIKE '张%'


--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT *
from Student a
WHERE a.Sname LIKE  '李__'

--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT *
FROM Student a 
WHERE a.Sname LIKE '——丽%'

--16、查询所有不姓“陈”的学生姓名。
SELECT *
FROM Student a 
WHERE a.Sname not LIKE '陈%'


--17、查询数据库课程的课程号和学分。
SELECT *
FROM course a
WHERE a.CName='数据库'

--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT *
FROM Student a INNER JOIN SC b ON a.Sno=b.Sno  INNER JOIN course c ON c.Cno=b.Cno
WHERE b.Grade IS NULL 




--19、查所有有成绩的学生学号和课程号。
SELECT *
from SC a
WHERE a.Grade!=0



--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。
SELECT *
from SC a 
WHERE a.Cno=3
ORDER BY a.Grade DESC
--21、	查询全体学生情况，查询结果按所在系号升序排列，同一系中的学生按年龄降序排列。
SELECT *
FROM Student a

ORDER BY a.Sdept ASC ,a.Sage DESC





--22、	查询学生总人数。
SELECT COUNT(a.Sname) 
from Student a



--23、	查询选修了数学课程的学生人数。
SELECT COUNT(*) 
FROM Student a INNER JOIN SC b ON a.Sno=b.Sno  INNER JOIN course c ON c.Cno=b.Cno
WHERE c.CName='数学'




--24、	计算1号课程的学生平均成绩。
SELECT AVG(*) 
from SC a
WHERE a.Cno=1


--25、	查询选修1号课程的学生最高分数。
SELECT MAX(a.Cno) 
from SC a
where a.Cno=1
--26、	查询学号为200215121的学生选修课程的总学分数。
SELECT	SUM(c.Ccredit) 
FROM Student a INNER JOIN SC b ON a.Sno=b.Sno  INNER JOIN course c ON c.Cno=b.Cno
WHERE a.Sno=200215121

--27、	求各个课程号及相应的选课人数。
SELECT COUNT(*) 
from SC a INNER JOIN course b ON a.Cno=b.Cno
GROUP BY b.Ccredit


--28、	查询选修了3门以上课程的学生学号。
SELECT a.Sno
from SC a
GROUP BY a.Sno
HAVING COUNT(a.Cno)>3 



