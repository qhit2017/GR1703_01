--1.	查询姓“李”的老师的名字
SELECT t.tname
FROM teacher t
WHERE t.tname LIKE '李%'

--2.	查询男生、女生分别有多少人
SELECT s.ssex,COUNT(*) AS '人数'
FROM student s 
GROUP BY s.ssex

--3.	查询学生中第二个字是文的有哪些人
SELECT *
FROM student s
WHERE s.sname LIKE '_文%'

--4.	查询语文考试的最高分、最低分以及平均分
SELECT MAX(s.score) AS '最高分', MIN(s.score) AS '最低分',AVG(s.score) AS '平均分'
FROM sc s INNER JOIN course c ON s.cid = c.cid
WHERE c.cname = '语文'

--5.	查询平均成绩大于60分的同学的学号和平均成绩；
SELECT s.sid,s.sname,AVG(c.score) AS '平均分'
FROM student s INNER JOIN sc c ON s.sid = c.sid
GROUP BY s.sid,s.sname
HAVING AVG(c.score)>60

--6.	查询所有同学的学号、姓名、选课数、总成绩；
SELECT s.sid,s.sname,COUNT(*) AS '选课数' ,SUM(a.score) AS '总成绩'
FROM student s INNER JOIN sc a ON s.sid = a.sid INNER JOIN course c ON a.cid = c.cid
GROUP BY s.sid,s.sname

--7.	查询网络营销这门课的教师名称、学生名称、学生成绩
SELECT t.tname,s.sname,a.score
FROM course c INNER JOIN teacher t ON c.tid = t.tid INNER JOIN sc a ON a.cid = c.cid INNER JOIN student s ON s.sid = a.sid
WHERE c.cname = '网络营销'

--8.	查询所有课程成绩小于80分的同学的学号、姓名；
SELECT s.sid,s.sname,a.score
from student s INNER JOIN sc a ON s.sid = a.sid INNER JOIN course c ON c.cid = a.cid
WHERE a.score <80
GROUP BY c.cname,s.sid,s.sname,a.score

--9.	查询没有参加所有课程考试的同学的学号、姓名
SELECT s.sid,s.sname
FROM student s INNER JOIN sc a ON s.sid = a.sid RIGHT JOIN course c ON c.cid = a.cid
WHERE a.score IS NULL AND a.score = 0

--10.	把“SC”表中“苏轼”老师教的课的成绩都减5分；
UPDATE sc SET score=(score-5) where cid IN (
SELECT DISTINCT a.cid
from course c INNER JOIN teacher t ON c.tid = t.tid INNER JOIN sc a ON a.cid = c.cid
WHERE t.tname = '苏轼') 

--11.	删除成绩表中“李清照”老师教的课程的记录；
DELETE  FROM sc where cid IN  (
SELECT a.cid
FROM course c INNER JOIN teacher t ON c.tid = t.tid INNER JOIN sc a ON a.cid = c.cid
WHERE t.tname = '李清照')

--12.	查询语文的最高分以及学生姓名
SELECT TOP 1 MAX(a.score) AS '最高分',s.sname
FROM student s INNER JOIN sc a ON s.sid = a.sid INNER JOIN course c ON c.cid = a.cid
WHERE c.cname = '语文'
GROUP BY s.sname
ORDER BY MAX(a.score) DESC

--13.	查询每门科目的平均成绩
SELECT c.cname,AVG(s.score) AS '平均成绩'
FROM course c INNER JOIN sc s ON c.cid = s.cid
GROUP BY c.cname

--14.	查询每门科目的及格率

--15.	查询英语前三名的学生姓名、分数、教师名称
SELECT *
FROM
--16.	查询每门课考试的人数
--17.	查询平均成绩大于85的所有学生的学号、姓名和平均成绩
--18.	查询相同年龄且相同性别的有哪些人
--19.	查询java基础大于等于70且小于等于90的女生，输出姓名、性别、分数
--20.	查询苏轼老师教的课中，成绩最好的前两名，输出名字和分数
