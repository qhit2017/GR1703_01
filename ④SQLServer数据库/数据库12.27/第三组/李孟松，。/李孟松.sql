--1.	查询姓“李”的老师的名字
SELECT *
FROM teacher a
where a.tname LIKE '李%'
--2.	查询男生、女生分别有多少人
SELECT a.ssex,COUNT(a.ssex) AS '人数' 
FROM student a
GROUP BY a.ssex 

--3.	查询学生中第二个字是文的有哪些人
SELECT *
FROM student a
where a.sname LIKE '_文%'

--4.	查询语文考试的最高分、最低分以及平均分
SELECT MAX(a.score )AS '语文最高分' ,MIN(a.score )AS '语文最低分',AVG(a.score )AS '语文平均分' 
from sc a
WHERE a.cid =(SELECT a.cid FROM course a WHERE a.cname LIKE '语文')

--5.	查询平均成绩大于60分的同学的学号和平均成绩；
SELECT AVG(a.score ) AS '平均分',a.sid 
from sc a
GROUP BY a.sid 
HAVING AVG(a.score )>60

--6.	查询所有同学的学号、姓名、选课数、总成绩；
SELECT COUNT(b.cid ),SUM(c.score ),a.sid ,a.sname  
FROM student a INNER JOIN course b ON a.sid =b.cid 
INNER JOIN sc c ON b.cid  =c.cid 
GROUP BY a.sname  



--7.	查询网络营销这门课的教师名称、学生名称、学生成绩
SELECT a.tname,d.sname ,c.score 
from teacher a INNER JOIN course  b ON a.tid  =b.tid 
INNER JOIN sc c ON b.cid =c.cid INNER JOIN student d ON c.sid =d.sid 
AND b.cname ='网络营销' 
--8.	查询所有课程成绩小于80分的同学的学号、姓名；
SELECT b.sid ,b.sname 
from sc c INNER JOIN student b ON c.sid =b.sid 
AND c.score <80
--9.	查询没有参加所有课程考试的同学的学号、姓名
SELECT b.sid ,b.sname 
from sc c INNER JOIN student b ON c.sid =b.sid 
AND c.score  IN (NULL ) 

--10.	把“SC”表中“苏轼”老师教的课的成绩都减5分
SELECT (a.score -5)
from sc a INNER JOIN teacher b ON a.cid  =b.tid 
WHERE  b.tname ='苏轼' 
GROUP BY a.score 
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






