--1.	查询姓“李”的老师的名字
SELECT t.tname FROM teacher t
WHERE t.tname LIKE '李%';

--2.	查询男生、女生分别有多少人
SELECT s.ssex AS '性别',COUNT(*) AS '数量' FROM student s
GROUP BY s.ssex;

--3.	查询学生中第二个字是文的有哪些人
SELECT s.sname FROM student s
WHERE s.sname LIKE '_文%';

--4.	查询语文考试的最高分、最低分以及平均分
SELECT MAX(sc.score) AS '最高分',MIN(sc.score) AS '最低分',AVG(sc.score) AS '平均分' 
	FROM sc sc INNER JOIN course c ON sc.cid = c.cid
	AND c.cname = '语文';

--5.	查询平均成绩大于60分的同学的学号和平均成绩；
SELECT sc.sid,AVG(sc.score) FROM sc sc
GROUP BY sc.sid 
HAVING AVG(sc.score)>60;

--6.	查询所有同学的学号、姓名、选课数、总成绩；
SELECT sc.sid AS '学号',s.sname AS '姓名',COUNT(c.cid) AS '选课数',SUM(sc.score) AS '总成绩'  
FROM student s INNER JOIN sc sc ON s.sid = sc.sid INNER JOIN course c ON c.cid = sc.cid
GROUP BY s.sid,sc.sid,s.sname ;

--7.	查询网络营销这门课的教师名称、学生名称、学生成绩
SELECT t.tname,s.sname,sc.score 
FROM student s INNER JOIN sc sc ON s.sid = sc.sid 
	INNER JOIN course c ON c.cid = sc.cid 
	INNER JOIN teacher t ON c.tid = t.tid
AND c.cname = '网络营销';

--8.	查询所有课程成绩小于80分的同学的学号、姓名；
SELECT s.sid,s.sname FROM student s INNER JOIN sc sc ON s.sid = sc.sid
WHERE  sc.score < 80;

--9.	查询没有参加所有课程考试的同学的学号、姓名
SELECT s.sid,s.sname FROM student s INNER JOIN sc sc ON s.sid = sc.sid
WHERE sc.score IS NULL;

--10.	把“SC”表中“苏轼”老师教的课的成绩都减5分
SELECT *,
	CASE t.tname WHEN '苏轼' THEN sc.score - 5 ELSE sc.score END '新分数'
FROM course c INNER JOIN teacher t ON c.tid = t.tid INNER JOIN sc sc ON c.cid = sc.cid
 

--11.	删除成绩表中“李清照”老师教的课程的记录；
DELETE FROM sc WHERE cid IN (SELECT sc.cid
FROM student s INNER JOIN sc sc ON s.sid = sc.sid INNER JOIN course c ON c.cid = sc.cid INNER JOIN teacher t ON t.tid = c.tid 
WHERE t.tname = '苏轼');

--12.	查询语文的最高分以及学生姓名
SELECT TOP 1 sc.score,s.sname FROM student s INNER JOIN sc sc ON s.sid = sc.sid INNER JOIN course c ON c.cid = sc.cid 
AND c.cname ='语文'
ORDER BY sc.score DESC;

--13.	查询每门科目的平均成绩
SELECT c.cname AS '科目',AVG(sc.score) AS '平均分' FROM sc sc RIGHT JOIN course c ON c.cid = sc.cid 
GROUP BY c.cname;

--14.	查询每门科目的及格率
SELECT c.cname AS '科目',COUNT(sc.score) FROM sc sc RIGHT JOIN course c ON c.cid = sc.cid 
WHERE sc.score > =60
GROUP BY c.cname;

--15.	查询英语前三名的学生姓名、分数、教师名称
SELECT TOP 3 s.sname,sc.score,t.tname  
FROM student s INNER JOIN sc sc ON s.sid = sc.sid INNER JOIN course c ON c.cid = sc.cid INNER JOIN teacher t ON c.tid = t.tid
AND c.cname = '英语'
ORDER BY sc.score DESC;
--16.	查询每门课考试的人数
SELECT c.cname,COUNT(*) FROM sc sc RIGHT JOIN course c ON c.cid = sc.cid 
AND sc.score IS NOT NULL 
GROUP BY c.cname;

--17.	查询平均成绩大于85的所有学生的学号、姓名和平均成绩
SELECT s.sid,s.sname,AVG(sc.score) FROM sc sc INNER JOIN student s ON s.sid = sc.sid 
GROUP BY s.sid,s.sname
HAVING AVG(sc.score)>85

--18.	查询相同年龄且相同性别的有哪些人 
SELECT c.sname FROM student c
WHERE EXISTS(SELECT s.sage,s.ssex 
FROM student s WHERE s.sage IN (SELECT s.sage FROM student s GROUP BY s.sage HAVING COUNT(s.sage)>1)
GROUP BY s.sage,s.ssex HAVING COUNT(s.ssex)>1 AND c.sage = s.sage AND c.ssex = s.ssex);

--19.	查询java基础大于等于70且小于等于90的女生，输出姓名、性别、分数
SELECT s.sname,s.ssex,sc.score FROM sc sc INNER JOIN student s ON s.sid = sc.sid INNER JOIN course c ON c.cid = sc.cid
AND c.cname = 'java基础' AND sc.score BETWEEN 70 AND 90;

--20.	查询苏轼老师教的课中，成绩最好的前两名，输出名字和分数
SELECT TOP 2 s.sname,sc.score FROM student s INNER JOIN sc sc ON s.sid = sc.sid INNER JOIN course c ON c.cid = sc.cid INNER JOIN teacher t ON c.tid = t.tid 
AND t.tname = '苏轼'
ORDER BY sc.score  DESC 


