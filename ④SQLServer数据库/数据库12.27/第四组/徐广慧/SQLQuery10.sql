SELECT *FROM Teacher
SELECT *FROM sc
SELECT *FROM Student
SELECT *FROM course




--1.	查询姓“李”的老师的名字
select *
from Teacher a
WHERE a.Tname LIKE '李%'



--2.	查询男生、女生分别有多少人
SELECT a.ssex,COUNT(*) 
from student a
GROUP BY a.ssex
--3.	查询学生中第二个字是文的有哪些人
SELECT *
from student a
where a.sname LIKE '_文%'
--4.	查询语文考试的最高分、最低分以及平均分
SELECT MAX(a.score)as'最高分',MIN(a.score)'最低分',AVG(a.score)'平均分' 
from sc a INNER JOIN course b ON a.cid=b.cid
where b.cname='语文'


--5.	查询平均成绩大于60分的同学的学号和平均成绩；

SELECT b.sid,AVG(b.score) 
from student a INNER JOIN sc b ON a.sid=b.sid
group by b.sid
HAVING AVG(b.score)>60

--6.	查询所有同学的学号、姓名、选课数、总成绩；
select a.sid,a.sname,COUNT(c.cname) ,SUM(b.score) 
from student a INNER JOIN sc b ON a.sid=b.sid INNER JOIN course c ON c.cid=b.cid
GROUP BY b.sid


--7.	查询网络营销这门课的教师名称、学生名称、学生成绩
SELECT a.sname,b.score,d.tname
from student a INNER JOIN sc b ON a.sid=b.sid INNER JOIN course c ON c.cid=b.cid INNER JOIN teacher d ON d.tid=c.tid 
AND d.tname='网络营销'
GROUP BY b.score

--8.	查询所有课程成绩小于80分的同学的学号、姓名；
select DISTINCT  a.sid,a.sname
from student a INNER JOIN sc b ON a.sid=b.sid
WHERE b.score<80;



--9.	查询没有参加所有课程考试的同学的学号、姓名
SELECT a.sid,a.sname
from student a INNER JOIN sc b ON a.sid=b.sid
WHERE b.score is NULL




--10.	把“SC”表中“苏轼”老师教的课的成绩都减5分；
SELECT a.score-5
from sc a INNER JOIN course b on a.cid=b.cid INNER JOIN  teacher c ON  b.tid=c.tid
WHERE c.tname='苏轼'

--11.	删除成绩表中“李清照”老师教的课程的记录；

--12.	查询语文的最高分以及学生姓名
SELECT TOP 1 MAX(c.cname) ,a.sname,b.score
from student a INNER JOIN sc b ON a.sid=b.sid INNER JOIN course c ON b.cid=c.cid
where c.cname='语文'
GROUP BY a.sname,b.score
ORDER BY b.score  desc


--13.	查询每门科目的平均成绩
SELECT AVG(b.score) 
from course a INNER JOIN sc b ON a.cid=b.cid
GROUP BY a.cname


--14.	查询每门科目的及格率
SELECT  
from course a INNER JOIN sc b ON a.cid=b.cid
WHERE b.score>60
GROUP BY a.cname





--15.	查询英语前三名的学生姓名、分数、教师名称
SELECT TOP 3 a.sname,b.score,d.tname
from student a INNER JOIN sc b ON a.sid=b.sid INNER JOIN course c ON c.cid=b.cid INNER JOIN teacher d ON d.tid=c.tid 
WHERE c.cname='英语'
ORDER BY b.score DESC 



--16.	查询每门课考试的人数


SELECT COUNT(*) 
from course a INNER JOIN sc b ON a.cid=b.cid
GROUP BY a.cname


--17.	查询平均成绩大于85的所有学生的学号、姓名和平均成绩
SELECT a.sid,a.sname,AVG(b.score) 
from student a INNER JOIN sc b ON a.sid=b.sid INNER JOIN course c ON b.cid=c.cid
GROUP BY a.sid,a.sname
HAVING AVG(b.score)>85 

--18.	查询相同年龄且相同性别的有哪些人
SELECT a.sname,a.ssex
from student a 
WHERE a.sage=a.sage and  a.ssex=a.ssex




--19.	查询java基础大于等于70且小于等于90的女生，输出姓名、性别、分数
SELECT a.sname,a.ssex,b.score
from student a INNER JOIN sc b ON a.sid=b.sid INNER JOIN course c ON b.cid=c.cid
WHERE c.cname='java基础' AND  b.score<=90AND b.score>=70 AND a.ssex='女'

--20.	查询苏轼老师教的课中，成绩最好的前两名，输出名字和分数
SELECT  TOP 2 a.sname,b.score
from student a INNER JOIN sc b ON a.sid=b.sid INNER JOIN course c ON c.cid=b.cid INNER JOIN teacher d ON d.tid=c.tid 
WHERE d.tname='苏轼'
ORDER BY  b.score DESC 

