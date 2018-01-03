SELECT * from student
INSERT into student values (11,	'王彬彬',	18,	'女')
INSERT into student values (12,	'徐广慧',	17,	'男')
INSERT into student values (13,	'王梦瑶',	18,	'女')
INSERT into student values (14,	'刘泗鑫',	19,	'男')
INSERT into student values (15,	'王文迪',   19,	'男')
INSERT into student values (16,	'王定宇',	19,	'男')
INSERT into student values (17,	'田淞丹',	18,	'女')
INSERT into student values (18,	'廖伟良',	18,	'男')
INSERT into student values (19,	'胡雯月',	19,	'女')
INSERT into student values (20,	'邢文哲',	19,	'女')
INSERT into student values (21,	'党刘涛',	17,	'女')
INSERT into student values (22,	'张家豪',	18,	'女')
INSERT into student values (23,	'申宇浩',	17,	'男')
INSERT into student values (24,	'梁壮壮',	17,	'男')
INSERT into student values (25,	'许方为',	16,	'男')
INSERT into student values (26,	'陈起航',	18,	'女')
SELECT *FROM Teacher
INSERT into Teacher VALUES(61,	'李清照')
INSERT into Teacher VALUES(62,	'苏轼')
INSERT into Teacher VALUES(63,	'马云')
INSERT into Teacher VALUES(64,	'李白')
SELECT*FROM Course
INSERT into Course VALUES(1,	'计算机基础',	62)
INSERT into Course VALUES(2,	'java基础',	62)
INSERT into Course VALUES(3,	'数据库基础',61)
INSERT into Course VALUES(4,	'英语',	61)
INSERT into Course VALUES(5,	'数学',	63)
INSERT into Course VALUES(6,	'语文',	63)
INSERT into Course VALUES(7,	'网络营销',	64)
SELECT *FROM Sc
INSERT into Sc VALUES(11,	1,	80)
INSERT into Sc VALUES(12,	1,	70)
INSERT into Sc VALUES(13,	2,	81)
INSERT into Sc VALUES(14,	2,	85)
INSERT into Sc VALUES(15,	3,	60)
INSERT into Sc VALUES(16,	3,	70)
INSERT into Sc VALUES(17,	4,	65)
INSERT into Sc VALUES(18,	4,	75)
INSERT into Sc VALUES(19,	5,	80)
INSERT into Sc VALUES(20,	5,	30)
INSERT into Sc VALUES(21,	6,	90)
INSERT into Sc VALUES(22,	6,	45)
INSERT into Sc VALUES(23,	7,	20)
--1.	查询姓“李”的老师的名字
SELECT *
from Teacher a
  WHERE   a.Tname  like '李%'


--2.	查询男生、女生分别有多少人
SELECT b.ssex , COUNT(*)
FROM student b
group BY b.ssex

--3.	查询学生中第二个字是文的有哪些人
SELECT *
FROM student c
where c.sname LIKE '%文%'

--4.	查询语文考试的最高分、最低分以及平均分
SELECT *
FROM  Sc  d
WHERE d.cid=6
ORDER BY d.cid ASC 







--5.	查询平均成绩大于60分的同学的学号和平均成绩；






--6.	查询所有同学的学号、姓名、选课数、总成绩；
--7.	查询网络营销这门课的教师名称、学生名称、学生成绩
--8.	查询所有课程成绩小于80分的同学的学号、姓名；
--9.	查询没有参加所有课程考试的同学的学号、姓名
--10.	把“SC”表中“苏轼”老师教的课的成绩都减5分；
--11.	删除成绩表中“李清照”老师教的课程的记录；
--12.	查询语文的最高分以及学生姓名
--13.	查询每门科目的平均成绩
select f.cid, avg(f.score)
from Sc f
GROUP BY f.cid


--14.	查询每门科目的及格率
--15.	查询英语前三名的学生姓名、分数、教师名称
--16.	查询每门课考试的人数
--17.	查询平均成绩大于85的所有学生的学号、姓名和平均成绩
--18.	查询相同年龄且相同性别的有哪些人
--19.	查询java基础大于等于70且小于等于90的女生，输出姓名、性别、分数
--20.	查询苏轼老师教的课中，成绩最好的前两名，输出名字和分数
