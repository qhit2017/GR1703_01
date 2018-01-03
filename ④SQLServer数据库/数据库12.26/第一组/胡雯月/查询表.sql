--1、查询全体学生的学号与姓名。
SELECT sno , sname  
from student


--2、查询全体学生的姓名、学号、所在系。
SELECT sname , sno ,  sdept
from student 

--3、查全体学生的姓名及其出生年份。
SELECT sname ,2017-sage 
from student

--4、查询选修了课程的学生学号（即有选修记录）。
SELECT s.sno
from student s INNER JOIN sc c ON c.sno =s.sno 
AND c.sno IS NOT NULL 



--5、查询计算机科学系全体学生的名单。
SELECT sname
from student
WHERE sname='计算机'




--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT sname , sage
from student 
WHERE sage<20

--7、查询考试成绩有不及格的学生的学号。
SELECT sno
from sc
WHERE grade<60


--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT sname,sdept, sage
from student
WHERE sage BETWEEN 18AND 22

--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT  sname, sdept , sage 
from student
WHERE sage NOT BETWEEN 20AND 23


--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT sname , ssex 
from student
WHERE sdept IN ('信息','数学','计算机')

--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT sname, ssex 
from student 
WHERE sdept NOT IN ('信息','数学','计算机')

--12、查询学号为09102040203的学生的详细情况。
SELECT *
FROM student S INNER JOIN sc SC ON S.Sno=SC.Sno
INNER JOIN course C ON C.Cno=SC.Cno
WHERE S.Sno=09102040203

--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT S.Sname,S.Sno,S.Ssex 
FROM student S 
WHERE S.Sname LIKE '张%'

--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT S.Sname 
FROM student S 
WHERE S.Sname LIKE'李__'

--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT *
FROM student S 
WHERE S.Sname LIKE '_丽%'

--16、查询所有不姓“陈”的学生姓名。
SELECT *
FROM student S 
WHERE S.Sname NOT LIKE '陈%'

--17、查询DB_Design课程的课程号和学分。
SELECT C.Cno,C.Ccredit
FROM course C INNER JOIN sc SC ON C.Cno=SC.Cno
WHERE C.Cname ='DB_Design'

--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT S.Sno,C.Cname 
FROM student S LEFT JOIN sc SC ON S.Sno=SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno
AND SC.Grade IS NULL

--19、查所有有成绩的学生学号和课程号。
SELECT S.Sno,C.Cname 
FROM student S INNER JOIN sc SC ON SC.Sno=S.Sno
 INNER JOIN course C ON C.Cno=SC.Cno 

--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。
SELECT S.Sno , SC.Grade 
FROM student S INNER JOIN sc SC ON SC.Sno=S.Sno 
   INNER JOIN course C ON C. Cno =SC.Cno 
   AND C.Cno=3
   ORDER BY SC.Grade 

--21、	查询全体学生情况，查询结果按所在系号升序排列，同一系中的学生按年龄降序排列。
SELECT *
FROM student S 
ORDER BY S.Sdept ,S.Sage DESC

--22、	查询学生总人数。
SELECT COUNT(*)
FROM student 

--23、	查询选修了数学课程的学生人数。
SELECT COUNT(*)
FROM student S INNER JOIN sc SC ON S.Sno=SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno 
	AND C.Cname ='数学'

--24、	计算1号课程的学生平均成绩。
SELECT AVG(SC.Grade )
FROM student S INNER  JOIN sc SC ON S.Sno = SC.Sno 
		INNER JOIN course C ON C.Cno=SC.Cno
	AND C.Cno=1
		
		
--25、	查询选修1号课程的学生最高分数。
SELECT MAX(SC.Grade )
FROM student S INNER JOIN sc SC ON S.Sno=SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno
	AND C.Cno =1

--26、	查询学号为200215121的学生选修课程的总学分数。
SELECT SUM(C.Ccredit )
FROM student S INNER JOIN sc SC ON S.Sno = SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno 
	AND S.Sno =200215121 AND SC.Grade >60

--27、	求各个课程号及相应的选课人数。
SELECT COUNT(*) AS'人数'
FROM student S INNER JOIN sc SC ON S.Sno = SC.Sno 
	INNER JOIN course C ON C. Cno =SC.Cno  
	GROUP BY C.Cno 

--28、	查询选修了3门以上课程的学生学号。
SELECT S.Sno 
FROM student S INNER JOIN sc SC ON S.Sno = SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno 
	GROUP BY S.Sno 
	HAVING COUNT(*)>3
