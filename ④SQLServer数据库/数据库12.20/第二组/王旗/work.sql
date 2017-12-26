SELECT * FROM student
DELETE FROM student
INSERT INTO student (no,name,sex,age,dept)VALUES('01','令狐冲','男',20,'计算机');
INSERT INTO student VALUES ('02','任盈盈','女',19,'语教',99);
INSERT INTO student VALUES ('03','任我行','男',45,'畜牧',68);
INSERT INTO student VALUES ('04','田伯光','男',34,'财经',30);
INSERT INTO student VALUES ('05','仪琳','女',18,'语教',91);
INSERT INTO student VALUES ('06','岳不群','男',44,'财经',93);
INSERT INTO student VALUES ('07','曲非烟','女',15,'计算机',95);


--1.	查询缺少成绩的学生的学号和姓名。
SELECT a.no,a.name
from student a
where grade is NULL
--2.	查询每个专业内学生的平均成绩。
SELECT a.dept,AVG(a.grade) as '平均成绩'
from student a
GROUP BY a.dept
--3.	查所有有成绩的学生的学号和姓名。
SELECT a.no,a.name
from student a
WHERE a.grade is NOT NULL
--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
select *
from student a
ORDER BY a.dept,a.age
--5.	查询学生总人数。
SELECT count(*) as '总人数'
from student 
--6.	查询男生和女生的人数。
SELECT a.sex ,count(*) as '人数'
from student a
GROUP BY a.sex
--7.	查询每个专业的平均成绩，结果按照成绩降序排列。
SELECT a.dept,AVG(a.grade)
from student a
group BY a.dept 
ORDER BY AVG(a.grade)DESC
--8.	查询每个专业中成绩最好的学生成绩。
SELECT a.dept,MAX(a.grade)
from student a
GROUP BY a.dept
--9.	查询每个专业中成绩最差的学生成绩。
SELECT a.dept,MIN(a.grade)
from student a
GROUP BY a.dept
--10.	查询平均成绩最差的专业的名字。
SELECT top 1 a.dept
from student a
group BY a.dept
ORDER BY AVG(a.grade)
--11.	查询男生和女生的平均成绩
SELECT a.sex,AVG(a.grade) as '成绩'
from student a
group BY a.sex
--12.	查询成绩高于平均成绩的学生姓名和成绩。

--13.	查询专业学生人数超过50人的专业名。

--14.	查询“计算机”专业未成年学生的平均成绩和专业名。
SELECT a.name,a.dept
from student a

WHERE a.age<16AND a.dept='计算机'








