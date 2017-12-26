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


--	1.查询缺少成绩的学生的学号和姓名。
SELECT q.Sno,q.Sname
FROM student q

--2.查询每个专业内学生的平均成绩。
SELECT w.Sdept,AVG(w.Grade) as '平均值'
from student w
GROUP BY w.Sdept


--3.查所有有成绩的学生的学号和姓名。
SELECT e.Sno,e.Sname
from student e
where e.Grade IS NOT NULL 


--4.查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
SELECT *
from student r
ORDER by r.Sdept ASC ,r.Sage desc
 



--5.查询学生总人数。
SELECT count(*)
from student 


--6.查询男生和女生的人数
SELECT t.Ssex,COUNT(*) as'人数'
from student t
GROUP BY t.Ssex


--7.查询每个专业的平均成绩，结果按照成绩降序排列。
SELECT y.Sdept,AVG(y.Grade)as '平均成绩'
from student y
GROUP BY y.Sdept
ORDER BY AVG(y.Grade) DESC




--8.查询每个专业中成绩最好的学生成绩。
SELECT u.Sdept,MAX(u.Grade)
from student u
GROUP BY u.Sdept



--9.查询每个专业中成绩最差的学生成绩。
SELECT i.Sdept,MIN(i.Grade)
from student i
GROUP BY i.Sdept


--10.查询平均成绩最差的专业的名字。






--11.查询男生和女生的平均成绩。





--12.查询成绩高于平均成绩的学生姓名和成绩。






--13.查询专业学生人数超过50人的专业名。





--14.查询“计算机”专业未成年学生的平均成绩和专业名

