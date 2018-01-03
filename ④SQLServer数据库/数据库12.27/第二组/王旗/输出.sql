--1.	查询姓“李”的老师的名字
SELECT*
from teacher a
WHERE a.tname='李%' 
--2.	查询男生、女生分别有多少人
SELECT   a.ssex,count(*)'人数'
from student a
GROUP BY a.ssex
--3.	查询学生中第二个字是文的有哪些人
SELECT *
from student a
WHERE a.sname='_文%'
--4.	查询语文考试的最高分、最低分以及平均分
SELECT MAX( s.score)as'最高分',MIN( s.score)AS'最低分',AVG( s.score)as'平均分' 
from course c inner JOIN sc s on c.CId= s.cid
WHERE c.Cname='语文'
--5.	查询平均成绩大于60分的同学的学号和平均成绩；
SELECT  s.sid, AVG( a.score)as'平均成绩'
FROM student s inner JOIN sc a on a.cid= s.sid
GROUP BY s.sid
HAVING AVG( a.score)>60 
--6.	查询所有同学的学号、姓名、选课数、总成绩；
SELECT  s.sid,s.sname,c.Cname, SUM(a.score) as'总成绩'
from student s inner JOIN course c on s.sid= c.TId inner JOIN sc a on s.sid= a.cid
GROUP BY s.sid, s.sname, c.Cname

--7.	查询网络营销这门课的教师名称、学生名称、学生成绩
SELECT t.tname,s.sname,a.score
from student s INNER JOIN teacher t on s.sid= t.tid inner JOIN course c on s.sid= c.TId inner JOIN sc a on s.sid= a.cid
WHERE c.Cname='网络营销'
--8.	查询所有课程成绩小于80分的同学的学号、姓名；
SELECT s.sid,s.sname
from student s inner JOIN course c on s.sid= c.TId inner JOIN sc a on s.sid= a.cid
WHERE a.score<80
--9.	查询没有参加所有课程考试的同学的学号、姓名
SELECT s.sid,s.sname
from student s inner JOIN course c on s.sid= c.TId inner JOIN sc a on s.sid= a.cid
WHERE a.score is NULL
--10.	把“SC”表中“苏轼”老师教的课的成绩都减5分；

--11.	删除成绩表中“李清照”老师教的课程的记录；
--12.	查询语文的最高分以及学生姓名
--13.	查询每门科目的平均成绩
--14.	查询每门科目的及格率
--15.	查询英语前三名的学生姓名、分数、教师名称
--16.	查询每门课考试的人数
--17.	查询平均成绩大于85的所有学生的学号、姓名和平均成绩
SELECT s.sid,s.sname,AVG(a.score) 
from student s inner JOIN course c on s.sid= c.TId inner JOIN sc a on s.sid= a.cid
GROUP BY s.sid,s.sname
HAVING AVG(a.score) >85
--18.	查询相同年龄且相同性别的有哪些人
--19.	查询java基础大于等于70且小于等于90的女生，输出姓名、性别、分数
--20.	查询苏轼老师教的课中，成绩最好的前两名，输出名字和分数
SELECT  TOP 2 s.sname,a.score
from student s INNER JOIN teacher t on s.sid= t.tid inner JOIN course c on s.sid= c.TId inner JOIN sc a on s.sid= a.cid
WHERE t.tname='苏轼'
ORDER BY a.score desc