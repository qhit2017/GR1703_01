

--1.	查询缺少成绩的学生的学号和姓名

SELECT a.sno ,a.sname 
from student a
WHERE a.grade IS NULL 

--2.	查询每个专业内学生的平均成绩

SELECT b.sdept as'专业名',avg(b.grade) as '平均成绩'
from student b
GROUP BY b.sdept

--3.	查所有有成绩的学生的学号和姓名

SELECT c.sno,c.sname
from student c
WHERE c.grade IS NOT NULL 

--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列

SELECT d.sdept,d.sage   
FROM student d
GROUP BY d.sdept,d.sage
ORDER BY d.sdept ASC ,d.sage DESC

--5.	查询学生总人数

SELECT COUNT(*) as '总人数'
from student e

--6.	查询男生和女生的人数

SELECT f.ssex as '性别',count(f.ssex) as'人数'
from student f
GROUP BY f.ssex

--7.	查询每个专业的平均成绩，结果按照成绩降序排列

SELECT g.sdept as'专业名',avg(g.grade) as'平均分'
from student g
group BY g.sdept
ORDER BY AVG(g.grade) DESC 

--8.	查询每个专业中成绩最好的学生成绩

SELECT h.sdept,MAX(h.grade) as'最高分'
from student h
GROUP BY h.sdept

--9.	查询每个专业中成绩最差的学生成绩

SELECT i.sdept,MIN(i.grade) as'最低分'
from student i
GROUP BY i.sdept

--**10.	查询平均成绩最差的专业的名字

SELECT top 1 j.sdept
from student j
GROUP BY j.sdept
ORDER BY avg(j.grade ) ASC 

--11.	查询男生和女生的平均成绩

SELECT k.ssex,AVG(k.grade )as'平均分' 
from student k
GROUP BY k.ssex

--**12.	查询成绩高于平均成绩的学生姓名和成绩




--**13.	查询专业学生人数超过50人的专业名

 


--**14.	查询“计算机”专业未成年学生的平均成绩和专业名

















