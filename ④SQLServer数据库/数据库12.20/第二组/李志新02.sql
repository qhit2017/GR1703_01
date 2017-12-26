1.	查询缺少成绩的学生的学号和姓名。
2.	查询每个专业内学生的平均成绩。
3.	查所有有成绩的学生的学号和姓名。
4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
5.	查询学生总人数。
6.	查询男生和女生的人数。
7.	查询每个专业的平均成绩，结果按照成绩降序排列。
8.	查询每个专业中成绩最好的学生成绩。
9.	查询每个专业中成绩最差的学生成绩。
10.	查询平均成绩最差的专业的名字。
11.	查询男生和女生的平均成绩。
12.	查询成绩高于平均成绩的学生姓名和成绩。
13.	查询专业学生人数超过50人的专业名。
14.	查询“计算机”专业未成年学生的平均成绩和专业名。


--	查询缺少成绩的学生的学号和姓名。
SELECT a.Sno,a.Sname
FROM student a

--查询每个专业内学生的平均成绩。
SELECT b.Sdept,AVG(b.Grade) as '平均值'
from student b
GROUP BY b.Sdept


--查所有有成绩的学生的学号和姓名。
SELECT c.Sno,c.Sname
from student c
where c.Grade IS NOT NULL 


--查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
SELECT *
from student d
ORDER by d.Sdept ASC ,d.Sage desc
 



--查询学生总人数。
SELECT count(*)
from student e


--查询男生和女生的人数
SELECT f.Ssex,COUNT(*) as'人数'
from student f
GROUP BY f.Ssex


--查询每个专业的平均成绩，结果按照成绩降序排列。
SELECT g.Sdept,AVG(g.Grade)as '平均成绩'
from student g
GROUP BY g.Sdept
ORDER BY AVG(g.Grade) DESC




--	查询每个专业中成绩最好的学生成绩。
SELECT h.Sdept,MAX(h.Grade)
from student h
GROUP BY h.Sdept



--查询每个专业中成绩最差的学生成绩。
SELECT i.Sdept,MIN(i.Grade)
from student i
GROUP BY i.Sdept


--查询平均成绩最差的专业的名字。
SELECT j.Sdept,(AVG(j.Grade) as '平均成绩'
from student j
GROUP BY j.Sdept

----00000000000000000000000000000000000000000000000000000000000000



--	查询男生和女生的平均成绩。
SELECT k.Ssex,AVG(k.Grade) AS '平均成绩'
from student k
GROUP BY k.Ssex



--查询成绩高于平均成绩的学生姓名和成绩。




--00000000000000000000000000000000000000000000

--查询专业学生人数超过50人的专业名。
SELECT m.Sdept,COUNT(*) as '人数'
from student m
GROUP BY m.Sdept



--查询“计算机”专业未成年学生的平均成绩和专业名
SELECT  n.Sdept,AVG(n.Grade) as '平均成绩' 
from student n
GROUP BY n.Sdept
