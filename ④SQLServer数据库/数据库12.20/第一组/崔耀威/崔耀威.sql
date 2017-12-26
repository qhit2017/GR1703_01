SELECT * FROM student
INSERT INTO student VALUES ('1','路','男',18,'计算机',NULL)
INSERT INTO student VALUES ('2','路fei','男',18,'计算机',90)
INSERT INTO student VALUES ('4','新','男',18,'计算机',50)
INSERT INTO student VALUES ('3','杜','男',18,'体育',90)
INSERT INTO student VALUES ('5','迪迦','男',18,'体育',90)
--1.	查询缺少成绩的学生的学号和姓名。
SELECT a.sno,a.sname
from student a
WHERE a.grade IS null

--2.	查询每个专业内学生的平均成绩。
SELECT a.sdept,AVG(a.grade) AS '平均成绩'
FROM student a
GROUP BY a.sdept

--3.	查所有有成绩的学生的学号和姓名。
SELECT a.sno,a.sname
FROM student a
WHERE a.grade IS NOT null

--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
SELECT * 
from student a
ORDER BY a.sdept,a.sage DESC
 
--5.	查询学生总人数。
SELECT COUNT(*) AS '人数'
from student a

--6.	查询男生和女生的人数。
SELECT a.ssex,COUNT(*) '人数'
FROM student a
GROUP BY a.ssex

--7.	查询每个专业的平均成绩，结果按照成绩降序排列。
SELECT a.sdept,AVG(a.grade) AS '平均成绩'
FROM student a
GROUP BY a.sdept 
ORDER BY AVG(a.grade) DESC

--8.	查询每个专业中成绩最好的学生成绩。
SELECT a.sdept, MAX(a.grade) AS '成绩'
FROM student a
GROUP BY a.sdept

--9.	查询每个专业中成绩最差的学生成绩。
SELECT a.sdept,MIN(a.grade) AS '成绩'
FROM student a
GROUP BY a.sdept

--10.	查询平均成绩最差的专业的名字。
SELECT top 1 a.sdept
FROM student a
GROUP BY a.sdept
ORDER BY AVG(a.grade) 

--11.	查询男生和女生的平均成绩。
SELECT a.ssex,AVG(a.grade) AS '平均成绩'
FROM student a
GROUP BY a.ssex

--12.	查询成绩高于平均成绩的学生姓名和成绩。
SELECT a.sname,a.grade
FROM student a
WHERE a.grade>(SELECT AVG(a.grade) AS '平均成绩' FROM student a GROUP BY )






--13.	查询专业学生人数超过50人的专业名。
SELECT a.sdept,COUNT(*) AS '专业人数'
FROM student a 
GROUP BY a.sdept







--14.	查询“计算机”专业未成年学生的平均成绩和专业名。





SELECT a.sdept
FROM student a
WHERE a.sdept=(SELECT a.sage

