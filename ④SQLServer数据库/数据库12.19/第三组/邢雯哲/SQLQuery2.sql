
SELECT * FROM student

--1.	查询全体学生的学号与姓名

SELECT s.sno,s.sname

FROM student s


--2.	查询全体学生的姓名、学号、专业

SELECT t.sname,t.sno,t.sdept

FROM student t


--3.	查全体学生的姓名及其年龄

SELECT l.sname,l.sage

FROM student l


--4.	查询“计算机科学”专业全体学生的名单

SELECT *

FROM student r

WHERE r.sdept='计算机科学'


--5.	查询所有年龄在20岁以下的学生姓名及其年龄

SELECT e.sname,e.sage

FROM student e

WHERE e.sage<20


--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序

SELECT  q.sname,q.sage,q.grade

FROM student q

where q.sage<18 

ORDER BY q.grade


--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列

SELECT p.sno

FROM student p

WHERE p.grade<60

ORDER BY p.grade desc

--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄

SELECT n.sname,n.sdept,n.sage

FROM student n

WHERE (n.sage>=18 and n.sage<=22)


--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄

SELECT i.sname,i.sdept,i.sage

FROM student i

WHERE (i.sage<20 or i.sage>23)

--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别

SELECT z.sname,z.ssex

FROM student z

WHERE z.sdept='信息系' OR z.sdept='数学系' or z.sdept='计算机科学'


--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别

SELECT x.sname,x.ssex

FROM student x

where x.sdept!='信息系'and x.sdept!='数学系'and x.sdept!='计算机科学'

--12.	查询学号为09102040203的学生的详细情况

 SELECT v.sname,v.ssex,v.sage,v.sdept,v.grade
 
FROM student v

where v.sno=2

--13.	查询所有姓“张”学生的姓名、学号和性别

SELECT w.sname,w.sno,w.ssex

FROM student w

WHERE w.sname LIKE'张%'

--14.	查询姓“李”且全名为三个汉字的学生的姓名

SELECT f.sname

FROM student f

where f.sname LIKE'李%'


--15.	查询名字中第2个字为“丽”字的学生的姓名和学号

SELECT m.sname,m.sno

FROM student m

where m.sname LIKE'%丽%'

--16.	查询所有不姓“陈”的学生姓名

SELECT t.sname

FROM student t

WHERE t.sname not LIKE '陈%'
