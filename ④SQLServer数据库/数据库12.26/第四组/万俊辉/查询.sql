--三、用SQL语句完成下列表查询(70分)
--1、查询全体学生的学号与姓名。
SELECT sno,sname FROM student;

--2、查询全体学生的姓名、学号、所在系。
SELECT s.sname,s.sno,s.sdept FROM student s;

--3、查全体学生的姓名及其出生年份。

--4、查询选修了课程的学生学号（即有选修记录）。
SELECT s.sno  FROM student s INNER JOIN SC sc ON s.sno = sc.sno
AND s.sno =sc.sno;

--5、查询计算机科学系全体学生的名单。
SELECT * FROM student 
WHERE sdept = 'CS';

--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT sname,sagea FROM student 
WHERE sagea <20;

--7、查询考试成绩有不及格的学生的学号。
SELECT sno FROM SC  
WHERE Grade <60;

--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT s.sname,s.sdept,s.sagea FROM student s
WHERE s.sagea BETWEEN 18 AND 20;

--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT sname,sdept,sagea FROM student 
WHERE sagea NOT BETWEEN 20 AND 23;

--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT sname,ssex FROM student 
WHERE sdept IN('IS','MA','CS');


--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT sname,ssex FROM student 
WHERE sdept NOT IN ('MA','IS');

--12、查询学号为09102040203的学生的详细情况。
SELECT * FROM student 
WHERE sno = 09102040203;

--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT sname,sno,ssex FROM student 
WHERE sname LIKE '张%';

--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT sname FROM student 
WHERE sname LIKE '李__';

--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT sname,sno FROM student 
WHERE sname LIKE '_丽%';

--16、查询所有不姓“陈”的学生姓名。
SELECT sname FROM student 
WHERE sname NOT LIKE '陈%';

--17、查询DB_Design课程的课程号和学分。
SELECT * FROM Course 
WHERE cname = 'DB_Design';

--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT sno,cno FROM SC 
WHERE Grade IS NULL;

--19、查所有有成绩的学生学号和课程号。
SELECT sno,cno FROM SC 
WHERE Grade IS NOT NULL;

--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。
SELECT sno,Grade FROM SC 
WHERE cno = '3'
ORDER BY Grade DESC;

--21、	查询全体学生情况，查询结果按所在系号升序排列，同一系中的学生按年龄降序排列。
SELECT * FROM student s 
ORDER BY s.sdept ASC,s.sagea DESC;

--22、	查询学生总人数。
SELECT COUNT(sno) FROM student;

--23、	查询选修了数学课程的学生人数。
SELECT COUNT(s.sno) FROM student s
WHERE s.sdept = 'MA';

--24、	计算1号课程的学生平均成绩。
SELECT AVG(sc.Grade) FROM SC sc 
WHERE sc.cno = 1;

--25、	查询选修1号课程的学生最高分数。
SELECT MAX(sc.Grade) FROM SC sc 
WHERE sc.cno = 1;

--26、	查询学号为200215121的学生选修课程的总学分数。
SELECT SUM(Grade) FROM SC 
WHERE sno = 200215121;

--27、	求各个课程号及相应的选课人数。
SELECT c.cno,COUNT(sc.cno) FROM Course c LEFT JOIN SC sc ON c.cno = sc.cno
GROUP BY sc.cno,c.cno;


--28、	查询选修了3门以上课程的学生学号。
SELECT sno FROM SC 
GROUP BY sno 
HAVING COUNT(cno)>=3;
