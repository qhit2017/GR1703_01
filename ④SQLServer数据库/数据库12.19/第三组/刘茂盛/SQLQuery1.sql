INSERT INTO student VALUES('001','张三','男',18,'计算机科学系',80);
INSERT INTO student VALUES('002','李四','男',21,'汽修系',78);
INSERT INTO student VALUES('003','李华','女',20,'数学系',70);
INSERT INTO student VALUES('004','李磊','男',19,'电气一体化系',90);
INSERT INTO student VALUES('005','刘德华','男',19,'音乐系',92);
INSERT INTO student VALUES('006','易建联','男',18,'体育系',96);
INSERT INTO student VALUES('007','杨幂','女',20,'艺术系',80);
INSERT INTO student VALUES('008','王五','男',19,'计算机科学系',70);
INSERT INTO student VALUES('009','杨文迪','女',20,'数学系',55);
INSERT INTO student VALUES('010','刘翔','男',22,'计算机科学',50);
INSERT INTO student VALUES('011','史蒂夫','男',23,'信息系',30);


SELECT *
FROM student 

--1.	查询全体学生的学号与姓名

SELECT a.sno,a.sname
from student a

--2.	查询全体学生的姓名、学号、专业

SELECT b.sname,b.sno,b.sdept
from student b

--3.	查全体学生的姓名及其年龄

SELECT c.sname ,c.sage 
from student c

--4.	查询“计算机科学”专业全体学生的名单

SELECT *
FROM student d
WHERE d.sdept='计算机科学系'

--5.	查询所有年龄在20岁以下的学生姓名及其年龄

SELECT e.sname,e.sage 
FROM student e
where e.sage <20

--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序

SELECT f.sname,f.sage ,f.sgrade
from student f
WHERE f.sage<18
ORDER BY f.sgrade DESC 

--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列

SELECT g.sno 
from student g
WHERE g.sgrade<60
ORDER BY g.sgrade desc

--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄

SELECT h.sname,h.sdept,h.sage
from student h
WHERE h.sage>=18 AND h.sage<=22

--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄

SELECT i.sname,i.sdept,i.sage
from student i
WHERE i.sage<20 OR i.sage>23

--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别

SELECT j.sname,j.ssex
FROM student j
where j.sdept='信息系' OR j.sdept ='数学系' OR j.sdept='计算机科学系'

--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别

SELECT k.sname,k.ssex
from student k
WHERE k.sdept!='信息系' AND k.sdept!='数学系' AND k.sdept!='计算机科学系'

--12.	查询学号为09102040203的学生的详细情况

SELECT *
FROM student l
WHERE l.sno='09102040203'

--13.	查询所有姓“张”学生的姓名、学号和性别

SELECT m.sname,m.sno,m.ssex
from student m
WHERE m.sname LIKE '张%'

--14.	查询姓“李”且全名为三个汉字的学生的姓名

SELECT n.sname
from student n
WHERE n.sname LIKE '李__'

--15.	查询名字中第2个字为“丽”字的学生的姓名和学号

SELECT o.sname,o.sno 
from student o
WHERE o.sname LIKE '_丽%'

--16.	查询所有不姓“陈”的学生姓名

SELECT p.sname
from student p
WHERE p.sname NOT  LIKE '陈%'

--测试：

INSERT INTO student VALUES ('001','张三','男',18,'师傅',20)
--会报错，字段（sno）为主键，不能重复

INSERT INTO student VALUES ('012',null,'男',18,'师傅',20)
--会报错 姓名不能为空

INSERT INTO student(sno,sname,sage,sdept,sgrade) VALUES ('012','张三',18,'师傅',20)
--不会报错，查询后发现学号为 012 的学生性别默认为 男

SELECT * from student 
DELETE FROM  student WHERE sno ='012'






