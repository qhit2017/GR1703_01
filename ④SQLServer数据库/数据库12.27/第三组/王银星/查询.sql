SELECT *FROM Course 
SELECT *FROM SC
SELECT *FROM Student
SELECT *FROM Teacher
--1.	查询姓“李”的老师的名字
SELECT a.Tname
FROM Teacher a
where a.Tname LIKE '李%'
--2.	查询男生、女生分别有多少人
SELECT a.ssex,COUNT(*) AS '人数'
FROM Student a
group BY a.ssex
--3.	查询学生中第二个字是文的有哪些人
SELECT a.sname
FROM Student a
where a.sname LIKE '_文%'
--4.	查询语文考试的最高分、最低分以及平均分
SELECT MAX(a.score)AS'语文考试最高分',MIN(a.score)AS'语文考试最低分',AVG(a.score) AS'语文考试平均分'  
FROM SC a
where a.cid=(SELECT a.CId FROM Course a where a.Cname LIKE '语文' )
--5.	查询平均成绩大于60分的同学的学号和平均成绩；
SELECT a.sid,AVG(a.score)AS '平均成绩'
FROM SC a
GROUP BY a.sid
HAVING AVG(a.score)>60 
--6.	查询所有同学的学号、姓名、选课数、总成绩；


--7.	查询网络营销这门课的教师名称、学生名称、学生成绩
SELECT a.Tname ,d.sname ,c.score
FROM Teacher a INNER JOIN Course b ON a.TId =b.TId
				INNER JOIN SC c ON c.cid =b.CId
				INNER JOIN Student d ON d.sid =c.sid
				AND b.Cname LIKE '网络营销'
--8.	查询所有课程成绩小于80分的同学的学号、姓名；
SELECT DISTINCT  a.sid ,b.sname
FROM SC a INNER JOIN Student b ON a.sid =b.sid
AND a.score <80
--9.	查询没有参加所有课程考试的同学的学号、姓名
SELECT *
FROM SC a INNER JOIN Course b ON a.cid =b.CId
--10.	把“SC”表中“苏轼”老师教的课的成绩都减5分；
SELECT (a.score-5)
FROM SC a
where a.cid IN(SELECT a.CId FROM Course a where a.TId =
			(SELECT a.TId FROM Teacher a WHERE a.Tname LIKE '苏轼'))
--11.	删除成绩表中“李清照”老师教的课程的记录；
DELETE FROM SC 
	WHERE cid =
	(SELECT a.CId FROM Course a WHERE a.TId=
	(SELECT a.TId FROM Teacher a WHERE a.Tname LIKE '李清照'))
--12.	查询语文的最高分以及学生姓名
SELECT TOP 1 MAX(c.score)AS'语文最高分',d.sname 
FROM  Teacher a INNER JOIN Course b ON a.TId =b.TId
				INNER JOIN SC c ON c.cid =b.CId
				INNER JOIN Student d ON d.sid =c.sid
				AND b.Cname LIKE '语文'
				GROUP BY d.sname
--13.	查询每门科目的平均成绩
SELECT b.Cname ,AVG(a.score) AS'平均成绩'
FROM SC a INNER JOIN Course b ON a.cid =b.CId
GROUP BY b.Cname
--14.	查询每门科目的及格率
--15.	查询英语前三名的学生姓名、分数、教师名称
SELECT top 3 d.sname ,c.score,a.Tname
FROM  Teacher a INNER JOIN Course b ON a.TId =b.TId
				INNER JOIN SC c ON c.cid =b.CId
				INNER JOIN Student d ON d.sid =c.sid
				AND b.Cname LIKE '英语'
				ORDER BY c.score DESC
--16.	查询每门课考试的人数
SELECT b.Cname,COUNT(*) AS'人数'
FROM SC a INNER JOIN Course b ON a.cid =b.CId
GROUP BY a.cid ,b.Cname
--17.	查询平均成绩大于85的所有学生的学号、姓名和平均成绩
SELECT b.sid ,a.sname ,AVG(b.score) 
FROM Student a INNER JOIN SC b ON a.sid =b.sid
AND b.score >85
GROUP BY b.sid,a.sname
--18.	查询相同年龄且相同性别的有哪些人 
--19.	查询java基础大于等于70且小于等于90的女生，输出姓名、性别、分数
SELECT d.sname ,d.ssex ,c.score
FROM  Teacher a INNER JOIN Course b ON a.TId =b.TId
				INNER JOIN SC c ON c.cid =b.CId
				INNER JOIN Student d ON d.sid =c.sid
				AND b.Cname LIKE 'java基础'
				AND (d.sage>=70 AND d.sage <=90)
				AND d.ssex LIKE '女'
--20.	查询苏轼老师教的课中，成绩最好的前两名，输出名字和分数
