INSERT INTO student values('135','小王','男',18,'计算机',120)
INSERT INTO student values('136','小张','男',18,'计算机',110)
INSERT INTO student values('137','小李','男',18,'计算机',99)
INSERT INTO student values('138','小陈','男',18,'计算机',12)
INSERT INTO student values('139','小刘','男',18,'计算机',10)



--1.	查询缺少成绩的学生的学号和姓名。
SELECT a.sno,a.sname
from student a
WHERE a.grade IS NULL 
--2.	查询每个专业内学生的平均成绩。
SELECT a.sdept, AVG(a.grade) as '平均分' 
from student a
GROUP BY a.sdept
--3.	查所有有成绩的学生的学号和姓名。
SELECT a.sno,a.sname
from student a
WHERE a.grade  is NOT NULL 
--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
SELECT * 
from student a
ORDER BY a.sdept , a.sage DESC 
--5.	查询学生总人数。
SELECT COUNT(*) as '总人数'
from student 
--6.	查询男生和女生的人数。
select a.ssex, COUNT(a.ssex) as '人数' 
from student a
GROUP BY a.ssex
--7.	查询每个专业的平均成绩，结果按照成绩降序排列。
SELECT a.sdept,AVG(a.grade) as '平均成绩' 
from student a
GROUP BY a.sdept
ORDER BY AVG(a.grade) DESC 
--8.	查询每个专业中成绩最好的学生成绩。
SELECT a.sdept,MAX(a.grade) as '最好的成绩' 
from student a
GROUP BY a.sdept
--9.	查询每个专业中成绩最差的学生成绩。
SELECT a.sdept,MIN(a.grade) as '最差的成绩'
from student a
GROUP BY a.sdept
--10.	查询平均成绩最差的专业的名字。
SELECT  top 1
a.sdept
from student a
GROUP BY a.sdept 
ORDER BY AVG(a.grade)
--11.	查询男生和女生的平均成绩。
SELECT a.ssex,AVG(a.grade) as '平均分'
from student a
group BY a.ssex
--12.	查询成绩高于平均成绩的学生姓名和成绩。
  
   


--13.	查询专业学生人数超过50人的专业名。


--14.	查询“计算机”专业未成年学生的平均成绩和专业名。

