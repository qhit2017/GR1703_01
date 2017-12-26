SELECT*FROM student
--1 查询缺少成绩的学生的学号和姓名
SELECT sno,sname
FROM student
WHERE grade IS NULL 



--2查询每个专业内学生的平均成绩

SELECT sdept ,AVG(grade)as'平均成绩'
from student
GROUP BY sdept

--3查询所有有成绩的学生学号和姓名

SELECT sno, sname
from student 
WHERE grade is NOT null

--4查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列
SELECT *FROM student

ORDER BY sdept ASC,sage DESC

--5查询学生总人数
SELECT COUNT(*) as'人数'
FROM student

--6查询男生和女生的人数
SELECT ssex, COUNT(*) as'人数'
FROM student
GROUP BY ssex

--7查询每个专业的平均成绩，结果按成绩降序排列
SELECT  sdept, AVG(grade) as'平均成绩'
FROM  student
GROUP BY sdept
ORDER BY avg (grade) DESC

--8查询每个专业中成绩最好的学生成绩
SELECT sdept, max(grade) as'最高成绩'
FROM student
GROUP BY sdept

--9查询每个专业中成绩最差的学生成绩
SELECT sdept, min(grade) as'最差成绩'
from student
GROUP BY sdept

--10查询平均成绩最差的专业名字
SELECT top 1
sdept
from student
GROUP BY sdept
ORDER BY avg(grade)

--11查询男生和女生的平均成绩
SELECT ssex,AVG(grade) as'平均成绩'
from student
GROUP BY ssex

--12查询成绩高于平均成绩的学生的名字和成绩
--13查询专业学生人数超过50人的专业名
--14查询“计算机”专业未成年学生的平均成绩和专业名
















