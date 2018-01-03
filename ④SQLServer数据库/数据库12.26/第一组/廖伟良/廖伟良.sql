CREATE table Student(
Sno char(11),
Sname char(20),
Ssex char(2),
Sage smallint,
Sdept char(20))

CREATE table Course(
Cno char(4),
Cname char(20),
Ccredit smallint)

CREATE table SC(
Sno char(11),
Cno char(4),
Grade smallint)

INSERT INTO Student VALUES(200215121,'甲','男',20,'CS')
INSERT INTO Student VALUES(200215122,'乙','男',19,'MA')
INSERT INTO Student VALUES(200215123,'丙','男',18,'IS')
INSERT INTO Student VALUES(200215124,'丁','男',17,'CS')
INSERT INTO Student VALUES(200215125,'戊','男',19,'IS')
INSERT INTO Student VALUES(200215126,'己','男',20,'MA')
INSERT INTO Student VALUES(200215127,'庚','男',21,'IS')
INSERT INTO Student VALUES(200215128,'辛','男',16,'CS')
INSERT INTO Student VALUES(200215129,'壬','男',15,'MA')
INSERT INTO Student VALUES(200215130,'癸','男',19,'CS')
INSERT INTO Student VALUES(200215131,'甲一','男',16,'I')
INSERT INTO Student VALUES(200215132,'乙一','男',18,'MA')
INSERT INTO Student VALUES(200215133,'丙一','男',18,'IS')
INSERT INTO Student VALUES(200215134,'丁一','男',17,'CS')
INSERT INTO Student VALUES(200215135,'戊一','男',16,'CS')
INSERT INTO Student VALUES(200215136,'己一','女',20,'IS')
INSERT INTO Student VALUES(200215137,'庚一','女',18,'MA')
INSERT INTO Student VALUES(200215138,'辛一','女',21,'MA')
INSERT INTO Student VALUES(200215139,'壬一','女',17,'MA')
INSERT INTO Student VALUES(200215140,'癸一','女',18,'IS')
INSERT INTO Student VALUES(200215141,'甲二','女',17,'CS')
INSERT INTO Student VALUES(200215142,'乙二','女',20,'CS')
INSERT INTO Student VALUES(200215143,'丙二','女',17,'CS')
INSERT INTO Student VALUES(200215144,'丁二','女',19,'IS')
INSERT INTO Student VALUES(200215145,'戊二','女',21,'MA')

INSERT INTO Course VALUES(1,'数据库',4)
INSERT INTO Course VALUES(2,'数学',2)
INSERT INTO Course VALUES(3,'信息系统',4)
INSERT INTO Course VALUES(4,'操作系统',3)
INSERT INTO Course VALUES(5,'数据结构',4)
INSERT INTO Course VALUES(6,'数据处理',2)
INSERT INTO Course VALUES(7,'PASCAL语言',4)
INSERT INTO Course VALUES(8,'JAVA',3)
INSERT INTO Course VALUES(9,'HTML',4)
INSERT INTO Course VALUES(10,'计算机科学',1)

INSERT INTO SC VALUES(200215121,1,92)
INSERT INTO SC VALUES(200215122,2,82)
INSERT INTO SC VALUES(200215123,3,87)
INSERT INTO SC VALUES(200215124,4,86)
INSERT INTO SC VALUES(200215125,5,92)
INSERT INTO SC VALUES(200215126,6,88)
INSERT INTO SC VALUES(200215127,7,76)
INSERT INTO SC VALUES(200215128,8,77)
INSERT INTO SC VALUES(200215129,9,81)
INSERT INTO SC VALUES(200215130,10,82)
INSERT INTO SC VALUES(200215131,1,83)
INSERT INTO SC VALUES(200215132,2,84)
INSERT INTO SC VALUES(200215133,3,74)
INSERT INTO SC VALUES(200215134,4,85)
INSERT INTO SC VALUES(200215135,5,86)
INSERT INTO SC VALUES(200215136,6,76)
INSERT INTO SC VALUES(200215137,7,73)
INSERT INTO SC VALUES(200215138,8,72)
INSERT INTO SC VALUES(200215139,9,71)
INSERT INTO SC VALUES(200215140,10,81)
INSERT INTO SC VALUES(200215141,1,91)
INSERT INTO SC VALUES(200215142,2,82)
INSERT INTO SC VALUES(200215143,3,92)
INSERT INTO SC VALUES(200215144,4,93)
INSERT INTO SC VALUES(200215145,5,94)

--1、查询全体学生的学号与姓名。
SELECT Sno,Sname
from Student

--2、查询全体学生的姓名、学号、所在系。
SELECT Sname,Sno,Sdept
from Student

--3、查全体学生的姓名及其出生年份???。
SELECT Sname
from Student

--4、查询选修了课程的学生学号（即有选修记录）。
SELECT s.Sno
from Student s LEFT JOIN SC sc ON s.Sno=sc.Sno
AND sc.Cno IS NOT NULL

--5、查询计算机科学系全体学生的名单。
SELECT *
from Student
WHERE Sdept='cs'
 

--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT Sname,Sage
from Student
WHERE Sage<20

--7、查询考试成绩有不及格的学生的学号。
SELECT s.Sno
from Student s INNER JOIN SC sc
ON s.Sno=sc.Sno
AND sc.Grade<60

--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT Sname,Sdept,Sage
from Student
WHERE Sage BETWEEN 18 AND 22

--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT Sname,Sdept,Sage
from Student
WHERE Sage NOT BETWEEN 20 AND 23

--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT Sname,Ssex
from Student
WHERE Sdept IN('IS','MA','CS')

--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT Sname,Ssex
from Student
WHERE Sdept NOT IN('IS','MA','CS')

--12、查询学号为09102040203的学生的详细情况。
SELECT *
from Student
WHERE Sno='09102040203'

--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT Sname,Sno,Ssex
from Student
WHERE Sname LIKE'张%'

--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT Sname
from Student
WHERE Sname LIKE'李__'

--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT Sname,Sno
from Student
WHERE Sname LIKE'_丽%'

--16、查询所有不姓“陈”的学生姓名。
SELECT Sname
from Student
WHERE Sname NOT LIKE'陈%'

--17、查询DB_Design课程的课程号和学分。
SELECT Cno,Ccredit
from Course
WHERE Cname='DB_Design'

--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT Sno,Cno
from SC
WHERE Grade IS NULL

--19、查所有有成绩的学生学号和课程号。
SELECT Sno,Cno
from SC
WHERE Grade IS NOT NULL

--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。
SELECT Sno,Grade
from SC
WHERE Cno=3
ORDER BY Grade desc

--21、查询全体学生情况，查询结果按所在系号(???)升序排列，同一系(???)中的学生按年龄降序排列。
SELECT *
FROM Student
ORDER BY Sage DESC

--22、查询学生总人数。
SELECT COUNT(*) AS '总人数'
FROM Student

--23、查询选修了数学课程的学生人数。
SELECT COUNT(*)
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
and c.Cname='数学'

--24、计算1号课程的学生平均成绩。
SELECT AVG(Grade)
from SC
WHERE Cno=1

--25、查询选修1号课程的学生最高分数。
SELECT MAX(Grade)
from SC
WHERE Cno=1

--26、查询学号为200215121的学生选修课程的总学分数。
SELECT sum(c.Ccredit)
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
AND s.Sno=200215121

--27、求各个课程号及相应的选课人数。
SELECT c.Cno,COUNT(*) as '选课人数'
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
GROUP BY c.Cno

--28、查询选修了3门以上课程的学生学号。
SELECT s.Sno
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
GROUP BY s.Sno
having COUNT(sc.Cno)>3