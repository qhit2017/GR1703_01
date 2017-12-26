SELECT *FROM student

--1.	查询缺少成绩的学生的学号和姓名

SELECT a.sno,a.sname

FROM student a 

WHERE a.grade IS NULL

--2.	查询每个专业内学生的平均成绩

SELECT w.sdept,AVG (w.grade) as'成绩'

FROM student w

GROUP BY w.sdept

--3.	查所有有成绩的学生的学号和姓名

SELECT s.sno,s.sname

FROM student s

WHERE s.grade is NOT NULL

--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列

SELECT *

FROM student q

ORDER BY q.sdept ,q.sage DESC 

--5.	查询学生总人数

SELECT COUNT(*)as '人数'

FROM student h 

--6.	查询男生和女生的人数

SELECT f.ssex, COUNT(*)as '人数'
	
FROM student f

GROUP BY f.ssex

--7.	查询每个专业的平均成绩，结果按照成绩降序排列

SELECT avg (d.grade)as '平均成绩'

FROM student d

GROUP BY d.sdept

ORDER BY AVG(d.grade)  DESC


--8.	查询每个专业中成绩最好的学生成绩

SELECT t.sdept, max (t.grade) as '最好成绩'

FROM student t

GROUP BY t.sdept

--9.	查询每个专业中成绩最差的学生成绩

SELECT z.sdept, min (z.grade) as '最差成绩'

FROM student z

GROUP BY z.sdept

--10.	查询平均成绩最差的专业的名字

SELECT top 1
a.sdept
from student a
GROUP BY a.sdept
ORDER BY AVG(a.grade) ASC   


--11.	查询男生和女生的平均成绩

SELECT r.ssex, avg (r.grade) as '平均成绩'

FROM student r

GROUP BY r.ssex

--12.	查询成绩高于平均成绩的学生姓名和成绩

SELECT n.sname,n.grade

FROM student n

WHERE n.grade>avg;

--13.	查询专业学生人数超过50人的专业名

SELECT g.sdept

FROM student g

where g.grade>50

--14.	查询“计算机”专业未成年学生的平均成绩和专业名

SELECT avg (k.grade)

FROM student k

where k.sdept='计算机' 

AND k.sage<18


