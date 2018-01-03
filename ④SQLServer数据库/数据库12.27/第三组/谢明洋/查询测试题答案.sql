--1.	查询姓“李”的老师的名字
SELECT t.tname
from teacher t
WHERE t.tname LIKE '李%'
--2.	查询男生、女生分别有多少人
SELECT s.ssex,COUNT(*) as '人数'
from  student s
group BY s.ssex
--3.	查询学生中第二个字是文的有哪些人
SELECT s.sname
from student s
WHERE s.sname LIKE '_文%'
--4.	查询语文考试的最高分、最低分以及平均分
SELECT MAX(s.score) as '最高分',MIN(s.score) as '最低分',AVG(s.score) as '平均分'
from  course c INNER JOIN sc s
on c.cid=s.cid
AND c.cname='语文'
--5.	查询平均成绩大于60分的同学的学号和平均成绩；
SELECT s.sid,AVG(sc.score) as '平均成绩'
from  student s INNER JOIN sc sc
on s.sid=sc.sid
AND sc.score>60 
--6.	查询所有同学的学号、姓名、选课数、总成绩；
SELECT s.sid,s.sname,COUNT(*) as '选课数',SUM(sc.score)
from  student s INNER JOIN sc sc
on s.sid=sc.sid INNER JOIN course c 
ON sc.cid=c.cid
GROUP BY s.sname,s.sid
--7.	查询网络营销这门课的教师名称、学生名称、学生成绩
SELECT t.tname,s.sid,sc.score
from  student s INNER JOIN sc sc
on s.sid=sc.sid INNER JOIN course c
ON sc.cid=c.cid INNER JOIN teacher t
ON c.tid=t.tid
AND c.cname='网络营销'
--8.	查询所有课程成绩小于80分的同学的学号、姓名；
SELECT s.sid,s.sid,sc.score,c.cname
from  student s INNER JOIN sc sc
on s.sid=sc.sid INNER JOIN course c
ON sc.cid=c.cid
AND sc.score<80
GROUP BY c.cname,s.sid,sc.score 
--9.	查询没有参加所有课程考试的同学的学号、姓名
SELECT s.sid,s.sname
from  student s INNER JOIN sc sc
on s.sid=sc.sid INNER JOIN course c
ON sc.cid=c.cid
AND sc.score>=0
GROUP BY c.cname
--10.	把“SC”表中“苏轼”老师教的课的成绩都减5分；
SELECT (sc.score-5) as '成绩'
from   sc sc INNER JOIN course c
ON sc.cid=c.cid INNER JOIN teacher t
on c.tid=t.tid
AND t.tname='苏轼'
GROUP BY c.cname,sc.score
--11.	删除成绩表中“李清照”老师教的课程的记录；
DELETE FROM course
where tid=(SELECT tid FROM teacher WHERE tname='李清照')
--12.	查询语文的最高分以及学生姓名
SELECT TOP 1 sc.score as '语文的最高分',s.sname
from  student s INNER JOIN sc sc
on s.sid=sc.sid INNER JOIN course c
ON sc.cid=c.cid
WHERE c.cname='语文'
GROUP BY s.sname,sc.score
ORDER BY sc.score DESC
--13.	查询每门科目的平均成绩
SELECT  c.cname,avg(s.score) as '平均成绩'
from course c INNER JOIN sc s
on c.cid=s.cid
GROUP BY c.cname
--14.	查询每门科目的及格率
--15.	查询英语前三名的学生姓名、分数、教师名称
--16.	查询每门课考试的人数
--17.	查询平均成绩大于85的所有学生的学号、姓名和平均成绩
--18.	查询相同年龄且相同性别的有哪些人
--19.	查询java基础大于等于70且小于等于90的女生，输出姓名、性别、分数
--20.	查询苏轼老师教的课中，成绩最好的前两名，输出名字和分数

