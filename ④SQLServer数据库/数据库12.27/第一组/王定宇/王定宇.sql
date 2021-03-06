
--1.	查询姓“李”的老师的名字
SELECT t.tname
from teacher t
where t.tname like '李%'

--2.	查询男生、女生分别有多少人
select s.ssex,COUNT(*) as '人数'
from student s
GROUP BY s.ssex

--3.	查询学生中第二个字是文的有哪些人
SELECT s.sname
from student s
where s.sname like '_文%'

--4.	查询语文考试的最高分、最低分以及平均分
SELECT max(sc.score) as '最高分',MIN(sc.score) as '最低分',AVG(sc.score) as '平均分'
from course c INNER JOIN sc ON c.cid=sc.cid
AND c.cname='语文'

--5.	查询平均成绩大于60分的同学的学号和平均成绩；
SELECT s.sid,AVG(sc.score) as '平均成绩'
from student s INNER JOIN sc on s.sid=sc.sid
GROUP BY s.sid
HAVING avg(sc.score)>60
--6.	查询所有同学的学号、姓名、选课数、总成绩；
SELECT s.sid,s.sname,COUNT(*) as '选课数',SUM(sc.score) as '总成绩'
from  student s INNER JOIN sc ON s.sid=sc.sid
GROUP BY s.sid,s.sname

--7.	查询网络营销这门课的教师名称、学生名称、学生成绩
SELECT t.tname,s.sname,sc.score
from student s INNER JOIN sc ON s.sid=sc.sid 
INNER JOIN course c ON c.cid=sc.cid
INNER JOIN teacher t ON c.tid=t.tid
AND c.cname ='网络营销'

--8.	查询所有课程成绩小于80分的同学的学号、姓名； 
SELECT s.sid,s.sname
from student s INNER JOIN sc ON s.sid=sc.sid
GROUP BY s.sid,s.sname
HAVING  max(sc.score) < 80

--9.	查询没有参加所有课程考试的同学的学号、姓名
SELECT s.sid,s.sname
from student s INNER JOIN sc ON s.sid=sc.sid
INNER JOIN course c ON c.cid=sc.cid
GROUP BY s.sid,s.sname

--10.	把“SC”表中“苏轼”老师教的课的成绩都减5分；
UPDATE sc SET score = score-5
WHERE cid IN (SELECT c.cid
from teacher t inner join course c on t.tid=c.tid
and t.tname='苏轼')


--11.	删除成绩表中“李清照”老师教的课程的记录；
DELETE from sc where cid in(SELECT c.cid
from teacher t inner join course c on t.tid=c.tid
and t.tname='李清照')

--12.	查询语文的最高分以及学生姓名
SELECT max(sc.score) as '最高分',s.sname
from student s INNER JOIN sc ON s.sid=sc.sid
INNER JOIN course c ON c.cid=sc.cid
AND c.cname='语文'
GROUP BY s.sname

--13.	查询每门科目的平均成绩
SELECT c.cname,AVG(sc.score) as '平均成绩'
from course c INNER JOIN sc ON c.cid=sc.cid
GROUP BY c.cname

--14.	查询每门科目的及格率					▷
SELECT sc.cid,  count(*)*100/ (SELECT count(*) from sc a WHERE a.cid=sc.cid)
from course c INNER JOIN sc ON c.cid=sc.cid
AND sc.score>60
GROUP BY sc.cid

--15.	查询英语前三名的学生姓名、分数、教师名称
select TOP 3 s.sname,sc.score,t.tname
from student s INNER JOIN sc ON s.sid=sc.sid
INNER JOIN course c ON c.cid=sc.cid
INNER JOIN teacher t ON t.tid=c.tid
AND c.cname='英语'
ORDER BY sc.score desc

--16.	查询每门课考试的人数
SELECT c.cname,COUNT(*) as '人数'
from course c INNER JOIN sc ON c.cid=sc.cid
GROUP BY c.cname

--17.	查询平均成绩大于85的所有学生的学号、姓名和平均成绩
SELECT s.sid,s.sname,AVG(sc.score) as '平均成绩'
from student s INNER JOIN sc ON s.sid=sc.sid
GROUP BY s.sid,s.sname
HAVING AVG(sc.score)>85

--18.	查询相同年龄且相同性别的有哪些人          ▷
SELECT *
from student s 
WHERE CAST( s.sage AS nvarchar)+s.ssex in 
(SELECT CAST( s.sage AS nvarchar)+s.ssex
from student s 
GROUP BY s.ssex,s.sage
HAVING count(*)>=2 )
ORDER BY s.sage,s.ssex


--19.	查询java基础大于等于70且小于等于90的女生，输出姓名、性别、分数
SELECT s.sname,s.ssex,sc.score
from student  s INNER JOIN sc ON s.sid=sc.sid
INNER JOIN course c ON c.cid=sc.cid
AND c.cname='java基础'
AND s.ssex='女'
GROUP BY s.sname,s.ssex,sc.score
HAVING sc.score BETWEEN 70 AND 90 

--20.	查询苏轼老师教的课中，成绩最好的前两名，输出名字和分数
SELECT TOP 2 s.sname,sc.score
from student s INNER JOIN  sc ON s.sid=sc.sid
INNER JOIN course c  ON c.cid=sc.cid 
INNER JOIN teacher t ON t.tid=c.tid
AND t.tname='苏轼'
ORDER BY sc.score DESC


