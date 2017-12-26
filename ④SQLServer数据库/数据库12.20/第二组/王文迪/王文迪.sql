--1.查询缺少成绩的学生的学号和姓名
SELECT a.Sname,a.Sno FROM Student a WHERE a.Grade IS NULL;

--2.查询每个专业内学生的平均成绩
SELECT b.Sdept as '专业',AVG(b.Grade) as '平均分' FROM Student b GROUP BY b.Sdept;

--3.查所有有成绩的学生的学号和姓名
SELECT c.Sno,c.Sname FROM Student c WHERE c.Grade IS NOT NULL;

--4.查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列
SELECT * FROM Student d ORDER BY d.Sdept ASC ,d.Sage DESC;

--5.查询学生总人数
SELECT COUNT(*) as '人数' FROM Student e;

--6.查询男生和女生的人数
SELECT f.Ssex as '性别',COUNT(f.Ssex) as '人数' FROM Student f GROUP BY f.Ssex;

--7.查询每个专业的平均成绩，结果按照成绩降序排列
SELECT g.Sdept as '专业',AVG(g.Grade) as '平均分' FROM Student g GROUP BY g.Sdept ORDER BY AVG(g.Grade);

--8.查询每个专业中成绩最好的学生成绩
SELECT h.Sdept as '专业',MAX(h.Grade) as '最高分' FROM Student h GROUP BY h.Sdept;

--9.查询每个专业中成绩最差的学生成绩
SELECT i.Sdept as '专业',MIN(i.Grade) as '最低分' FROM Student i GROUP BY i.Sdept;

--10.查询平均成绩最差的专业的名字
SELECT TOP 1 j.Sdept  FROM Student j GROUP BY j.Sdept ORDER BY AVG(j.Grade);

--11.查询男生和女生的平均成绩
SELECT l.Ssex as '性别',AVG(l.Grade) as '平均分' FROM Student l GROUP BY l.Ssex;

--12.查询成绩高于平均成绩的学生姓名和成绩
SELECT m.Sname as '姓名',m.Grade as '成绩' FROM Student m WHERE m.Grade>(SELECT AVG(m.Grade) as '平均分' FROM Student m);


----------------------------------------------------------------------------------------

--13.查询专业学生人数超过50人的专业名
SELECT n.Sdept as '专业' FROM Student n 
--WHERE EXISTS ((SELECT n.Sdept as '专业',COUNT(n.Sno) AS '人数' FROM Student n GROUP BY n.Sdept))
GROUP BY n.Sdept

--14.查询“计算机”专业未成年学生的平均成绩和专业名
--SELECT * FROM Student o WHERE o.Sdept='计算机' AND o.Sage<18
