SELECT * 
FROM Student a
--1.	查询缺少成绩的学生的学号和姓名。--已测试
SELECT a.Sno AS '学号' ,a.Sname AS '姓名' 
FROM Student a										
where a.Grade is NULL 
--2.	查询每个专业内学生的平均成绩。--已测试
SELECT a.Sdept AS '专业', AVG(a.Grade) AS '平均成绩'
FROM Student a										
group by a.Sdept 
--3.	查所有有成绩的学生的学号和姓名。--已测试
SELECT a.Sno AS '学号',a.Sname AS '姓名' 
FROM Student a			
where a.Grade IS NOT NULL  
--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。--已测试
SELECT *
FROM Student a			
ORDER BY a.Sdept ASC ,a.Ssex DESC 
--5.	查询学生总人数。--已测试
SELECT COUNT(*) AS '人数'  
FROM Student a
--6.	查询男生和女生的人数。--已测试
SELECT a.Ssex AS '性别', COUNT(*)AS '人数' 
FROM Student a
group BY a.Ssex 
--7.	查询每个专业的平均成绩，结果按照成绩降序排列。--已测试
SELECT a.Sdept AS '专业', AVG(a.Grade)AS '平均成绩' 
FROM Student a
group BY a.Sdept 
ORDER BY AVG(a.Grade)DESC  
--8.	查询每个专业中成绩最好的学生成绩。--已测试
SELECT a.Sdept AS '专业', MAX(a.Grade) AS '成绩'
FROM Student a
group BY a.Sdept 
--9.	查询每个专业中成绩最差的学生成绩。--已测试
SELECT a.Sdept AS '专业', MIN(a.Grade) AS '成绩'
FROM Student a
group BY a.Sdept
--10.	查询平均成绩最差的专业的名字。--自测
SELECT top 1
AVG(a.Grade)AS '平均成绩'  
from Student a
ORDER BY AVG(a.Grade)ASC 
--11.	查询男生和女生的平均成绩。
SELECT a.Ssex AS '性别',AVG(a.Grade)AS '平均成绩'
FROM Student a
group BY a.Ssex 
--12.	查询成绩高于平均成绩的学生姓名和成绩。--未知
SELECT AVG(a.Grade)AS '平均成绩' 
FROM Student a
GROUP BY a.Sdept    
--13.	查询专业学生人数超过50人的专业名。--未知
SELECT a.Sdept AS '专业名' ,COUNT(a.Sno)AS '人数' 
FROM Student a
GROUP BY a.Sdept HAVING COUNT(a.Sdept)>50
--14.	查询“计算机”专业未成年学生的平均成绩和专业名。--未知
SELECT AVG(a.Grade)AS '平均成绩',a.Sdept AS '专业名'  
FROM Student a
where a.Sdept='计算机'
GROUP BY a.Sdept,a.Sage HAVING a.Sage <18
