--1.	查询全体学生的学号与姓名。
SELECT a.sno,a.sname
FROM student a
--2.	查询全体学生的姓名、学号、专业。
SELECT b.sname,b.sno,b.sdept 
from student b
--3.	查全体学生的姓名及其年龄。
SELECT c.sname,c.sage
from student c
--4.	查询“计算机科学”专业全体学生的名单。
SELECT *
from student d
WHERE d.sdept='计算机科学'
--5.	查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT e.sname,e.sage
FROM student e
where e.sage<20 
--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
SELECT f.sname,f.sage,f.grade
from student f
WHERE f.sage<18
ORDER BY f.grade
--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。
SELECT j.grade
from student j
WHERE j.grade<50
ORDER BY j.grade desc
--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
SELECT i.sname,i.sdept,i.sage
from student i
WHERE i.sage<=18 AND i.sage<=22
--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。
SELECT h.sname,h.sdept,h.sage
from student h
WHERE h.sage<20 AND h.sage>23
--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT a.sname,a.ssex
from student a
WHERE a.sdept='IS' OR  a.sdept='MA' OR a.sdept='CS'
--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT a.sname,a.ssex
from student a
WHERE a.sdept!='IS'OR a.sdept='MA' OR a.sdept='CS'
--12.	查询学号为09102040203的学生的详细情况。
SELECT *
from student a
WHERE a.sno='09102040203'
--13.	查询所有姓“张”学生的姓名、学号和性别。
SELECT a.sname,a.sno,a.ssex
from student a
WHERE a.sname LIKE '张%%'
--14.	查询姓“李”且全名为三个汉字的学生的姓名。
SELECT a.sname
from student a
WHERE a.sname LIKE '李__'
--15.	查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT a.sname,a.sno
from student a
WHERE a.sname LIKE '_丽%'
--16.	查询所有不姓“陈”的学生姓名。
SELECT a.sname 
from student a
WHERE a.sname NOT LIKE '陈%'