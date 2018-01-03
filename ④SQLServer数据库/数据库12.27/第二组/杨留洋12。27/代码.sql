--1.	查询姓“李”的老师的名字
SELECT Tname
FROM Teacher  
WHERE Tname  LIKE '李%%'
--2.	查询男生、女生分别有多少人
SELECT ssex
FROM Student 
where ssex LIKE '男'OR ssex LIKE '女'
--3.	查询学生中第二个字是文的有哪些人
SELECT sname  FROM Student where sname  LIKE '_文_'
--4.	查询语文考试的最高分、最低分以及平均分
SELECT max(a.score)AS '最高分',MIN(a.score ) AS '最低分',avg(a.score )AS '平均分'
from sc a 
GROUP BY a.sid 
--5.	查询平均成绩大于60分的同学的学号和平均成绩
SELECT AVG(b.score ) AS '平均分'
from sc b
GROUP BY AVG(b.score)
