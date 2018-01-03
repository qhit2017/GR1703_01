
--1.	查询姓“李”的老师的名字

SELECT tname 
from Teacher 
WHERE tname LIKE '李%'
--2.	查询男生、女生分别有多少人
SELECT ssex,COUNT(*) 
from student0
GROUP BY ssex
--3.	查询学生中第二个字是文的有哪些人
SELECT *
from student0 
WHERE sname LIKE '_文%'
--4.	查询语文考试的最高分、最低分以及平均分
SELECT MAX(a.score) AS '最高分',MIN(a.score)  AS '最低分', AVG(a.score) AS '平均分' 
from SC a INNER JOIN Course b ON a.cid=b.Cid
WHERE b.Cname ='语文'
--5.	查询平均成绩大于60分的同学的学号和平均成绩；
SELECT a.sid,AVG(a.score) 
from SC  a
GROUP BY a.sid
HAVING AVG(a.score)>60

--6.	查询所有同学的学号、姓名、选课数、总成绩；
SELECT a.sid,a.sname,count(c.Cname) AS '选课数',sum(b.score) AS '总成绩'
from student0 a INNER JOIN SC b ON a.sid =b.sid INNER JOIN  Course c ON c.cid=b.cid 
group BY a.sid,a.sname

--7.	查询网络营销这门课的教师名称、学生名称、学生成绩
SELECT d.tname,a.sname,b.score
from student0  a INNER JOIN SC  b ON a.sid=b.sid INNER JOIN Course c ON c.Cid =b.cid 
INNER JOIN  Teacher d ON d.Tid=c.Tid
WHERE c.Cname='网络营销'
--8.	查询所有课程成绩小于80分的同学的学号、姓名；
SELECT DISTINCT a.sid,a.sname
from student0 a INNER JOIN SC b ON a.sid=b.sid 
WHERE b.score<80
--9.	查询没有参加所有课程考试的同学的学号、姓名
SELECT a.sid,a.sname
from student0 a LEFT JOIN SC b ON a.sid=b.sid 
WHERE b.score IS NULL




--10.	把“SC”表中“苏轼”老师教的课的成绩都减5分；
UPDATE SC SET score=score-5 WHERE cid=2
--11.	删除成绩表中“李清照”老师教的课程的记录；
DELETE FROM  SC  WHERE   cid IN ('3','4')
--12.	查询语文的最高分以及学生姓名
SELECT TOP 1 b.score ,a.sname 
from student0 a INNER JOIN SC b ON a.sid=b.sid INNER JOIN Course c ON c.Cid =c.Cid
WHERE c.Cname='语文'
ORDER BY b.score DESC 
--13.	查询每门科目的平均成绩
SELECT b.Cname,AVG(a.score) 
from SC  a INNER JOIN Course b ON a.cid=b.Cid 
GROUP BY b.Cname
--14.	查询每门科目的及格率
SELECT  (SELECT COUNT(*)   from Course  a INNER JOIN SC b ON a.Cid=b.cid WHERE b.score>60 GROUP BY )*100/COUNT(*) 
from Course
GROUP BY Course.Cname
--15.	查询英语前三名的学生姓名、分数、教师名称
SELECT TOP 3 d.sname ,b.score,c.tname
from Course a INNER join SC b ON a.Cid =b.cid INNER JOIN Teacher c ON c.Tid=a.Tid INNER JOIN student0 d ON b.sid=d.sid
WHERE a.Cname='英语'
ORDER BY b.score DESC 
--16.	查询每门课考试的人数
SELECT b.Cname,COUNT(*) AS '人数'
from SC a INNER JOIN Course b ON a.cid=b.Cid 
WHERE a.score IS NOT NULL 
GROUP BY b.Cname
--17.	查询平均成绩大于85的所有学生的学号、姓名和平均成绩
SELECT b.sid ,b.sname,AVG(a.score) AS '平均成绩'
from  SC a INNER JOIN student0 b ON a.sid=b.sid
GROUP BY b.sid ,b.sname 
HAVING AVG(a.score) >85
--18.	查询相同年龄且相同性别的有哪些人
SELECT age,ssex,sname 
from student
GROUP BY age,ssex,sname 
--19.	查询java基础大于等于70且小于等于90的女生，输出姓名、性别、分数
SELECT  c.sname,c.ssex,a.score
from SC a INNER JOIN Course b ON b.Cid=a.cid INNER JOIN student c ON c.sid=a.sid
WHERE c.ssex='女' AND b.Cname='java基础'AND a.score  BETWEEN 70 AND 90
20.	查询苏轼老师教的课中，成绩最好的前两名，输出名字和分数

