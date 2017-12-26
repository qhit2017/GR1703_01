SELECT*FROM
Student
--用SQL语句完成下列单表查询：


4.	--查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
5.	--查询学生总人数。
6.	--查询男生和女生的人数。
7.	--查询每个专业的平均成绩，结果按照成绩降序排列。
8.	--查询每个专业中成绩最好的学生成绩。
9.	--查询每个专业中成绩最差的学生成绩。
10.	--查询平均成绩最差的专业的名字。
11.	--查询男生和女生的平均成绩。
12.	--查询成绩高于平均成绩的学生姓名和成绩。
13.	--查询专业学生人数超过50人的专业名。
14.	--查询“计算机”专业未成年学生的平均成绩和专业名。
INSERT INTO Student VALUES(1,'小黄','男',18,'美术',98);
INSERT INTO Student VALUES(1,'小s','男',18,'计算机');
INSERT INTO Student VALUES(1,'小x','女',18,'美术');
INSERT INTO Student VALUES(1,'小r','男',18,'美术',35);
INSERT INTO Student VALUES(1,'小w','男',18,'美术',55);
INSERT INTO Student VALUES(1,'小e','男',18,'建筑');
INSERT INTO Student VALUES(1,'小j','女',18,'音乐',99);
INSERT INTO Student VALUES(1,'小t','男',18,'跳舞',88);
INSERT INTO Student VALUES(1,'小y','女',18,'文学',77);
INSERT INTO Student VALUES(1,'小z','男',18,'政治',88);
INSERT INTO Student VALUES(1,'小l','男',18,'设计',65);
INSERT INTO Student VALUES(1,'小u','男',18,'美术',75);
INSERT INTO Student VALUES(1,'小i','男',18,'美术',15);
--1.	--查询缺少成绩的学生的学号和姓名。
SELECT a.sno ,a.sname
from Student a
WHERE grade is NULL


--	查询每个专业内学生的平均成绩
SELECT b.Sdept,AVG(b.Grade) as '平均值'
from student b
GROUP BY b.Sdept
--查所有有成绩的学生的学号和姓名。
SELECT a.sno,a.sname
from Student a
WHERE a.grade IS NOT NULL

--查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
SELECT *
from student d
ORDER by d.Sdept ASC ,d.Sage desc
	--查询学生总人数。
SELECT COUNT (*)
from Student b
	--查询男生和女生的人数。
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
SELECT c.sdept,MIN(c.grade)
from Student c
GROUP BY c.sdept

--查询平均成绩最差的专业的名字。
SELECT j.Sdept,AVG(j.grade) as '平均成绩'
from student j
GROUP BY j.Sdept
