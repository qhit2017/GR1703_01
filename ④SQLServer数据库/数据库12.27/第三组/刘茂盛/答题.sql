SELECT *
from student

--1.	查询姓“李”的老师的名字
SELECT t.tname
from teacher t
where t.tname LIKE '李%'

--2.	查询男生、女生分别有多少人
SELECT COUNT(*)
from student
GROUP BY ssex
--3.	查询学生中第二个字是文的有哪些人
SELECT sname
from student
WHERE sname LIKE '_文%'
--4.	查询语文考试的最高分、最低分以及平均分
SELECT MAX(a.score),MIN(a.score),AVG(a.score)   
from student s INNER JOIN sc a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid
	AND c.cname='语文'


 
--5.	查询平均成绩大于60分的同学的学号和平均成绩；
SELECT s.sid,AVG(a.score)
from student s INNER JOIN sc a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid
	group BY s.sid
	HAVING AVG(a.score) >60

--6.	查询所有同学的学号、姓名、选课数、总成绩；
SELECT s.sid,s.sname,COUNT(c.cid),SUM(a.score)
from student s LEFT JOIN sc a on s.sid=a.sid
	LEFT JOIN course c on c.cid=a.cid
	GROUP BY s.sid,s.sname
	

--7.	查询网络营销这门课的教师名称、学生名称、学生成绩
SELECT t.tname,s.sname,a.score
from student s INNER JOIN sc a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid
	INNER JOIN teacher t on t.tid=c.tid
	AND c.cname='网络营销'

--8.	查询所有课程成绩小于80分的同学的学号、姓名；
SELECT s.sid,s.sname
from student s INNER JOIN sc a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid 
	AND 80<ALL(SELECT a.score from student b INNER JOIN sc a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid AND b.sid=s.sid) 
	GROUP BY s.sid,s.sname
	
	
	
	

--9.	查询没有参加所有课程考试的同学的学号、姓名
SELECT s.sid,s.sname
from student s LEFT JOIN sc a on s.sid=a.sid
	LEFT JOIN course c on c.cid=a.cid
	AND c.cname =all(SELECT c.cname from course c )
	GROUP BY s.sid,s.sname
	
	

--10.	把“SC”表中“苏轼”老师教的课的成绩都减5分；


--11.	删除成绩表中“李清照”老师教的课程的记录；
--12.	查询语文的最高分以及学生姓名
--13.	查询每门科目的平均成绩
--14.	查询每门科目的及格率
--15.	查询英语前三名的学生姓名、分数、教师名称
--16.	查询每门课考试的人数
--17.	查询平均成绩大于85的所有学生的学号、姓名和平均成绩

--18.	查询相同年龄且相同性别的有哪些人
SELECT s.sname
from student s
WHERE s.sage in(SELECT a.sage from student a GROUP BY a.sage)
AND s.ssex IN (SELECT b.ssex from student b GROUP BY b.sage,b.ssex)



--19.	查询java基础大于等于70且小于等于90的女生，输出姓名、性别、分数

select s.sname,s.ssex,a.score
from student s inner join sc a on s.sid=a.sid
	inner join course c on c.cid=a.cid
	and c.cname='java基础'
	and s.ssex='女'
	and a.score BETWEEN 70 and 90

--20.	查询苏轼老师教的课中，成绩最好的前两名，输出名字和分数

Select top 2 s.sname,t.tname, (a.score)
From student s inner join sc a on s.sid=a.sid 
	inner join course c on c. cid=a.cid 
	inner join teacher t on t.tid= c.tid  
	and t.tname='苏轼' 
	order by a.score desc
