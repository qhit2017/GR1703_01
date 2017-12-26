insert into student values(09102040203,'张三','男',18,'计算机科学',70);
insert into student values(01244421145,'李逵','男',17,'数学',80);
insert into student values(02344541146,'小丽','女',20,'信息',90);
insert into student values(01232426666,'亚尔特留斯','男',30,'信息',55);
insert into student values(01234412444,'艾斯','男',18,'数学',10);
insert into student values(01234545477,'李小龙','男',20,'计算机科学',11);
insert into student values(01234521111,'陈真','男',33,'数学',20);

delete  from student

--1.	查询全体学生的学号与姓名。
select * 
from student;

--2.	查询全体学生的姓名、学号、专业
select a.sname,a.Sno,a.sdept
from student a;

--3.	查全体学生的姓名及其年龄。
select b.sname,b.sage
from student b;

--4.	查询“计算机科学”专业全体学生的名单。
select *
from student c
where c.sdept='计算机科学';

--5.	查询所有年龄在20岁以下的学生姓名及其年龄。
select d.sname,d.sage
from student d
where d.sage<20;

--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
select e.sname,e.sage,e.grade
from student e
order by e.grade;

--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。
select f.Sno
from student f
order by f.grade desc;

--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
select g.sname,g.sdept,g.sage
from student g
where (g.sage>=18 and g.sage<=22);

--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。
select h.sname,h.sdept,h.sage
from student h
where (h.sage<20 or h.sage>23);

--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
select i.sname,i.ssex
from student i
where i.sdept='信息' or i.sdept='数学' or i.sdept='计算机科学';

--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
select j.sname,j.ssex
from student j
where j.sdept!='信息' and j.sdept!='数学' and j.sdept!='计算机科学';

--12.	查询学号为09102040203的学生的详细情况。  XX
select *
from student k
where k.Sno='09102040203'

--13.	查询所有姓“张”学生的姓名、学号和性别。
select l.sname,l.Sno,l.ssex
from student l
where l.sname like '张%'

--14.	查询姓“李”且全名为三个汉字的学生的姓名。XX
select m.sname
from student m
where m.sname like '李__'

--15.	查询名字中第2个字为“丽”字的学生的姓名和学号。
select n.sname,n.Sno
from student n
where n.sname like '_丽%'

--16.	查询所有不姓“陈”的学生姓名。 
select o.sname
from student o
where o.sname not like'陈%'

