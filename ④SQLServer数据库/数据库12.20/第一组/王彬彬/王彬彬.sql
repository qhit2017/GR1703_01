--1	查询缺少成绩的学生的学号和姓名。
--2	查询每个专业内学生的平均成绩。
--3.	查所有有成绩的学生的学号和姓名。
--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
--5.	查询学生总人数。
--6.	查询男生和女生的人数。
--7.	查询每个专业的平均成绩，结果按照成绩降序排列。
--8.	查询每个专业中成绩最好的学生成绩。
--9.	查询每个专业中成绩最差的学生成绩。
--10.	查询平均成绩最差的专业的名字。
--11.	查询男生和女生的平均成绩。
--12.	查询成绩高于平均成绩的学生姓名和成绩。
--13.	查询专业学生人数超过50人的专业名。
--14.	查询“计算机”专业未成年学生的平均成绩和专业名。

select * from Student2
delete from student2 where Sno=5
insert into Student2 values(1,'张三','女',18,'计算机',100)
insert into Student2 values(2,'李四','女',17,'音乐',120)
insert into Student2 values(3,'王五','男',18,'计算机',10)
insert into Student2 values(4,'孙六','女',13,'计算机',50)
insert into Student2 values(5,'赵7','男',15,'体育',null)
insert into Student2 values(6,'周7','女',13,'计算机',70)
insert into Student2 values(7,'李八','女',13,'计算机',90)
insert into Student2 values(8,'郑九','男',19,'体育',50)
--1	查询缺少成绩的学生的学号和姓名。
select Sno ,Sname
from Student2
where Grade is null

--2	查询每个专业内学生的平均成绩。
select Sdept, AVG(Grade) as '平局分'
from Student2
group by Sdept

--3.	查所有有成绩的学生的学号和姓名。
select Sno,Sname
from Student2
where Grade is not null

--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
select *
from Student2
order by Sdept ,Sage desc

--5.	查询学生总人数。
select COUNT(*) as '总人数' 
from Student2

--6.	查询男生和女生的人数。
select Ssex, COUNT(*) as '人数'
from Student2
group by Ssex

--7.	查询每个专业的平均成绩，结果按照成绩降序排列。
select Sdept, AVG(Grade) as'平均成绩'
from Student2
group by Sdept
order by AVG(Grade) 

--8.	查询每个专业中成绩最好的学生成绩。
select Sdept ,MAX(Grade) as '最高分'
from Student2
group by Sdept

--9.	查询每个专业中成绩最差的学生成绩。
select Sdept ,MIN(Grade) '最低分'
from Student2
group by Sdept

--10.	查询平均成绩最差的专业的名字。
select top 1 Sdept,AVG(Grade) 
from Student2 group by Sdept
order by avg(Grade)

--11.	查询男生和女生的平均成绩。
select Ssex,AVG(Grade) as '平均成绩'
from Student2
group by Ssex

--12.	查询成绩高于平均成绩的学生姓名和成绩。
select Sname,Grade
from Student2
where Grade>(select AVG(Grade)from Student2)
Group by Sdept ,Sname,Grade

--13.	查询专业学生人数超过50人的专业名。
select Sdept from Student2 group by Sdept having COUNT(Sno)>10

--14.	查询“计算机”专业未成年学生的平均成绩和专业名。
select Sdept ,AVG(Grade)from Student2 where Sno in (
	select Sno from Student2 where Sdept='计算机' and Sage<18
)
group by Sdept

