--1.查询缺少成绩的学生的学号和姓名。
select a.Sno,a.Sname
from Student a where a.Grade is null

--2.查询每个专业内学生的平均成绩。
select b.Sdept as'专业',avg(b.Grade) as'分数'
from Student b
group by b.Sdept

--3.查所有有成绩的学生的学号和姓名。
select c.Sno,c.Sname
from Student c where c.Grade is not null

--4.查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
select * 
from Student d
order by d.Sdept asc,d.Sage desc

--5.查询学生总人数。
select COUNT(*)
from Student

--6.查询男生和女生的人数。
select e.Ssex as'性别',count(*) as'人数'
from Student e
group by e.Ssex

--7.查询每个专业的平均成绩，结果按照成绩降序排列。
select f.Sdept as'专业',avg(f.Grade) as'分数'
from Student f
group by f.Sdept,f.Grade
order by f.Grade desc

--8.查询每个专业中成绩最好的学生成绩。
select g.Sdept as'专业',max(g.Grade) as'分数'
from Student g
group by g.Sdept

--9.查询每个专业中成绩最差的学生成绩。
select h.Sdept as'专业',min(h.Grade) as'分数'
from Student h
group by h.Sdept

--10.查询平均成绩最差的专业的名字。
select top 1 i.Sdept
from Student i
group by i.Sdept
order by avg(i.Grade)


--11.查询男生和女生的平均成绩。
select j.Ssex as'性别',avg(j.Grade) as'平均成绩'
from Student j
group by j.Ssex

--12.查询成绩高于平均成绩的学生姓名和成绩。
select k.Sname,k.Grade
from Student k
where k.Grade>(select avg(n.Grade)from Student n)

--13.查询专业学生人数超过50人的专业名。
select l.Sdept as'专业名'
from Student l
group by l.Sdept
having count(l.Sdept)>50

--14.查询“计算机”专业未成年学生的平均成绩和专业名。
select '计算机' as'专业名',avg(m.Grade) as'分数'
from Student m
where m.Sdept='计算机' and m.Sage<18

select * from Student