--1.	查询姓“李”的老师的名字
SELECT a.tname
from Teacher a
where a.tname LIKE '李%'

--2.	查询男生、女生分别有多少人
SELECT a.ssex, COUNT(a.ssex) 
from student a
GROUP BY a.ssex

--3.	查询学生中第二个字是文的有哪些人
SELECT a.sname
from student a
WHERE a.sname LIKE '_文%'

--4.	查询语文考试的最高分、最低分以及平均分
SELECT MAX(a.score) as '最高分',min(a.score) as '最低分',AVG(a.score) as '平均分'  
from SC a INNER JOIN Course s ON a.cid=s.cid
AND s.cname='语文'

--5.	查询平均成绩大于60分的同学的学号和平均成绩；
SELECT s.sid,s.score
from SC s WHERE (SELECT AVG(a.score)  from SC a ) > 60

--6.	查询所有同学的学号、姓名、选课数、总成绩；
SELECT a.sid as '学号',a.sname as '姓名',SUM(c.cid) as'选课数',  max(s.score) as '总成绩'
from student a INNER JOIN SC s ON a.sid =s.sid INNER JOIN Course c ON s.cid=c.cid
GROUP BY c.cname ,a.sid,a.sname,s.score

--7.	查询网络营销这门课的教师名称、学生名称、学生成绩
SELECT s.tname as '教师名字',i.sname as '学生名字',c.score as '成绩'
from Course  a INNER JOIN Teacher s ON a.tid=s.tid INNER JOIN SC c ON  a.cid=c.cid INNER JOIN student i ON c.sid=i.sid
AND a.cname='网络营销'

--8.	查询所有课程成绩小于80分的同学的学号、姓名；
SELECT s.sid,s.sname
from SC a INNER JOIN student s on a.sid=s.sid
WHERE a.score<80

--9.	查询没有参加所有课程考试的同学的学号、姓名
SELECT a.sid,s.sname
from sc a INNER JOIN student s ON a.sid=s.sid
AND a.score is NULL 

--10.	把“SC”表中“苏轼”老师教的课的成绩都减5分；

(SELECT s.score
from Course a INNER JOIN SC s ON s.cid=s.cid INNER JOIN Teacher c ON a.tid=c.tid
WHERE c.tname='苏轼')


--11.	删除成绩表中“李清照”老师教的课程的记录；
--12.	查询语文的最高分以及学生姓名
--13.	查询每门科目的平均成绩
--14.	查询每门科目的及格率
--15.	查询英语前三名的学生姓名、分数、教师名称
--16.	查询每门课考试的人数
--17.	查询平均成绩大于85的所有学生的学号、姓名和平均成绩
--18.	查询相同年龄且相同性别的有哪些人
--19.	查询java基础大于等于70且小于等于90的女生，输出姓名、性别、分数
--20.	查询苏轼老师教的课中，成绩最好的前两名，输出名字和分数

