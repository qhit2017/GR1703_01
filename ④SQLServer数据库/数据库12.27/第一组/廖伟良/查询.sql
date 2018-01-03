--1.查询姓“李”的老师的名字
select Tname 
from Teacher 
where Tname like '李%'

--2.查询男生、女生分别有多少人
select ssex,COUNT(*) as'人数'
from Student
group by ssex

--3.查询学生中第二个字是文的有哪些人
select sname from Student where sname like'_文%'

--4.查询语文考试的最高分、最低分以及平均分
select MAX(score)as'最高分',MIN(score)as'最低分',AVG(score) as'平均分'
from SC sc inner join Course c on sc.cid=c.CID
where c.Cname='语文'

--5.查询平均成绩大于60分的同学的学号和平均成绩；
select sid,AVG(score) as'平均成绩'
from SC
group by sid
having AVG(score)>60

--6.查询所有同学的学号、姓名、选课数、总成绩；
select s.sid,s.sname,COUNT(*) as'选课数',SUM(score)as'总成绩'
from SC sc inner join Student s on s.sid =sc.sid
group by s.sid,s.sname

--7.查询网络营销这门课的教师名称、学生名称、学生成绩
select t.Tname,s.sname,sc.score
from SC sc inner join Course c on sc.cid=c.CID
inner join Student s on s.sid =sc.sid
inner join Teacher t on c.TID=t.TID
and c.Cname='网络营销'

--8.查询所有课程成绩小于80分的同学的学号、姓名；
select s.sid,s.sname
from SC inner join Student s on sc.sid=s.sid
group by s.sid,s.sname
having MAX(sc.score)<80

--9.查询没有参加所有课程考试的同学的学号、姓名
select s.sid,s.sname
from SC inner join Student s on sc.sid=s.sid
group by s.sid,s.sname
having COUNT(*)<(select count(*)from course)

--10.把“SC”表中“苏轼”老师教的课的成绩都减5分；
update SC set score = score-5
where cid in(select c.cid
from teacher t inner join course c on t.tid=c.tid
and t.tname='苏轼')

--11.删除成绩表中“李清照”老师教的课程的记录；
delete from SC where cid in (select distinct sc.cid
from teacher t inner join course c on t.tid=c.tid
And T.Tname='李清照')

--12.查询语文的最高分以及学生姓名
select top 1(sc.score)as'最高分',s.sname
from SC sc inner join Course c on sc.cid=c.CID
inner join Student s on sc.sid=s.sid
and c.Cname='语文'
order by sc.score desc

--13.查询每门科目的平均成绩
select c.Cname,AVG(sc.score) as'分数'
from SC sc inner join Course c on sc.cid=c.CID
group by c.Cname

--14.查询每门科目的及格率
select sc.cid,COUNT(*)*100/(select count(*) from SC a where a.cid=SC.cid)
from SC inner join Course c on sc.cid=c.CID
AND sc.score>=60
group by sc.cid

--15.查询英语前三名的学生姓名、分数、教师名称
select top 3 s.sname,sc.score,t.TID
from SC sc inner join Course c on sc.cid=c.CID
inner join Student s on s.sid =sc.sid
inner join Teacher t on c.TID=t.TID
and c.Cname='英语'
order by sc.score desc

--16.查询每门课考试的人数
select cid,COUNT(*) as'人数'
from SC  
group by cid

--17.查询平均成绩大于85的所有学生的学号、姓名和平均成绩
select s.sid,s.sname,AVG(sc.score) as'分数'
from SC sc inner join Student s on s.sid =sc.sid
group by s.sid,s.sname
having AVG(sc.score)>85

--18.查询相同年龄且相同性别的有哪些人
select * 
from Student s where CAST(s.sage as nvarchar)+s.ssex in(
select CAST(s.sage as nvarchar)+s.ssex
from Student s
group by s.sage,s.ssex
having COUNT(*)>=2)
order by s.sage,s.ssex

--19.查询java基础大于等于70且小于等于90的女生，输出姓名、性别、分数
select s.sname,s.ssex,sc.score
from SC sc inner join Course c on sc.cid=c.CID
inner join Student s on s.sid =sc.sid
and c.Cname='java基础'and sc.score between 70 and 90
and s.ssex='女'

--20.查询苏轼老师教的课中，成绩最好的前两名，输出名字和分数
select top 2 s.sname,sc.score
from SC sc inner join Course c on sc.cid=c.CID
inner join Student s on s.sid =sc.sid
inner join Teacher t on c.TID=t.TID
And T.Tname='苏轼'
order by sc.score desc