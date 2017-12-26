
insert into Student2 (Sname,Sno,Sage)values('王彬彬',1,20)

--1.	查询全体学生的学号与姓名。
select a.Sno,a.Sname
from Student2 a

--2.	查询全体学生的姓名、学号、专业。
select a.Sname,a.Sno,a.Sdept
from Student2 a

--3.	查全体学生的姓名及其年龄。
select Sname ,Sage
from Student2

--4.	查询“计算机科学”专业全体学生的名单。
select Sname
from Student2 where Sdept ='计算机科学'


--5.	查询所有年龄在20岁以下的学生姓名及其年龄。
select Sname ,Sage
from Student2 where Sage<20

--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
select Sname,Sage,Grade
from Student2 where Sage<18 
order by Grade asc

--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。
select Sno
from Student2 where Grade <60
order by Grade desc

--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
select Sname ,Sdept,Sage
from Student2 where Sage>=18 and Sage<=22

--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。
select Sname,Sdept,Sage
from Student2 where Sage<20 and Sage>23

---10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
select Sname ,Ssex
from Student2 
where Sdept='信息'  or Sdept ='数学' or Sdept = '计算机科学'

--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
select Sname,Sage
from Student2
where Sdept!='信息' and Sdept!='数学'and Sdept!='计算机科学'

--12.	查询学号为09102040203的学生的详细情况。
select * 
from Student2 where Sno=09102040203

--13.	查询所有姓“张”学生的姓名、学号和性别。
select Sname ,Sno ,Ssex
from Student2 
where Sname like '张%%'

--14.	查询姓“李”且全名为三个汉字的学生的姓名。
select Sname
from Student2
where Sname like '李__'

--15.	查询名字中第2个字为“丽”字的学生的姓名和学号。
select Sname ,Sno
from Student2
where Sname like '_丽%'

--16.	查询所有不姓“陈”的学生姓名。
select Sname
from Student2
where Sname  not like '陈%%'