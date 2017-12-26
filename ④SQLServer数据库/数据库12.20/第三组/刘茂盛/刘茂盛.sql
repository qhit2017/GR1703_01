SELECT *
FROM student 

INSERT INTO student values('001','张三','男',18,'计算机应用',80);
INSERT INTO student values('002','张三是','女',21,'计算机应用',23);
INSERT INTO student values('003','张三撒旦','男',23,'汽修',68);
INSERT INTO student values('004','张三上网','女',21,'计算机应用',54);
INSERT INTO student values('005','张三娃儿','男',17,'计算机应用',80);
INSERT INTO student values('006','张三沙发','女',18,'计算机应用',78);
INSERT INTO student values('007','张三娃','男',19,'计算机',96);
INSERT INTO student VALUES('008','张三','男',18,'计算机科学系',80);
INSERT INTO student VALUES('009','李四','男',21,'汽修系',78);
INSERT INTO student VALUES('0010','李华','女',20,'数学系',70);
INSERT INTO student VALUES('011','李磊','男',19,'电气一体化系',90);
INSERT INTO student VALUES('012','刘德华','男',19,'音乐系',92);
INSERT INTO student VALUES('013','易建联','男',18,'体育系',96);
INSERT INTO student VALUES('014','杨幂','女',20,'艺术系',80);
INSERT INTO student VALUES('015','王五','男',19,'计算机科学系',70);
INSERT INTO student VALUES('016','杨文迪','女',20,'数学系',55);
INSERT INTO student VALUES('017','刘翔','男',22,'计算机科学',50);
INSERT INTO student VALUES('018','史蒂夫','男',23,'信息系',30);

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
select l.sname,l.grade
FROM student l
where l.grade>(select avg(m.grade) from student m)


--**13.	查询专业学生人数超过50人的专业名

select p.sdept
from student p
group by p.sdept
having count(p.sno)>50


--**14.	查询“计算机”专业未成年学生的平均成绩和专业名


SELECT AVG(n.grade),n.sdept
from student n
WHERE n.sdept='计算机' and n.sage<18
GROUP BY n.sdept
















