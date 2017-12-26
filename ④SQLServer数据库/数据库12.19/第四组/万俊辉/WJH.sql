--1.查询全体学生的学号与姓名
SELECT * FROM Student;

--2.查询全体学生的姓名、学号、专业
SELECT a.Sname,a.Sno,a.Sdept
FROM Student a;

--3.查全体学生的姓名及其年龄
SELECT b.Sname,b.Sage
FROM Student b;

--4.查询“计算机科学”专业全体学生的名单
SELECT * FROM Student c WHERE c.Sdept='计算机科学';

--5.查询所有年龄在20岁以下的学生姓名及其年龄
SELECT d.Sname,d.Sage 
FROM Student d WHERE d.Sage<=20;

--6.查询未成年的学生的姓名、年龄、成绩，并按照成绩排序
SELECT e.Sname,e.Sage,e.Grade FROM Student e WHERE e.Sage<18 ORDER BY e.Grade ASC;

--7.查询成绩有不及格的学生的学号，并按照成绩降序排列
SELECT f.Sname,f.Sno FROM Student f ORDER BY f.Grade DESC;

--8.查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄
SELECT g.Sname,g.Sdept,g.Sage FROM Student g WHERE g.Sage<=22 AND g.Sage>=18;

--9.查询年龄不在20~23岁之间的学生姓名、专业和年龄
SELECT h.Sname,h.Sdept,h.Sage FROM Student h WHERE h.Sage<=20 AND h.Sage>=22;

--10.查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别
SELECT i.Sname,i.Ssex FROM Student i WHERE i.Sdept='IS' OR i.Sdept='MA' OR i.Sdept='CS';

--11.查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别
SELECT j.Sname,j.Ssex FROM Student j WHERE j.Sdept!='IS' OR j.Sdept!='MA' OR j.Sdept!='CS';

--12.查询学号为09102040203的学生的详细情况
SELECT * FROM Student WHERE Sno='09102040203';

--13.查询所有姓“张”学生的姓名、学号和性别
SELECT k.Sname,k.Sno,k.Ssex FROM Student k WHERE k.Sname LIKE '张%';

--14.查询姓“李”且全名为三个汉字的学生的姓名
SELECT l.Sname FROM Student l WHERE l.Sname LIKE '李__';

--15.查询名字中第2个字为“丽”字的学生的姓名和学号
SELECT m.Sname,m.Sno FROM Student m WHERE m.Sname LIKE '_丽%';

--16.查询所有不姓“陈”的学生姓名
SELECT n.Sname FROM Student n WHERE n.Sname NOT LIKE '陈%';