



14.	查询姓“李”且全名为三个汉字的学生的姓名。
15.	查询名字中第2个字为“丽”字的学生的姓名和学号。
16.	查询所有不姓“陈”的学生姓名。


--查询全体学生的学号与姓名。
SELECT s.id,s.sname
from student s

--查询全体学生的姓名、学号、专业
SELECT s.id,s.sname,s.major
from student s

--查全体学生的姓名及其年龄。
SELECT s.sname,s.age
from student s

--查询“计算机科学”专业全体学生的名单。
SELECT *
from student s
WHERE s.major='计算机科学'

--查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT s.sname,s.age
from student s
WHERE s.age<20

--查询未成年的学生的姓名、年龄、成绩，并按照成绩排序
SELECT s.sname,s.age,s.score
from student s
order by s.score

--查询成绩有不及格的学生的学号，并按照成绩降序排列。
SELECT s.id
from student s
order by s.score asc

--查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
SELECT s.name,s.major,s.age
from student s
WHERE s.age>17 AND s.age<23


--查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT s.name,s.sex
from student s
WHERE s.major='IS' OR s.major='MA' OR s.major='CS'


--查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别
SELECT s.name,s.sex
from student s
WHERE (s.major!='IS' AND  s.major!='MA' AND  s.major!='CS')

--查询学号为09102040203的学生的详细情况。
SELECT *
from student s
WHERE s.id='09102040203'


--查询所有姓“张”学生的姓名、学号和性别。
SELECT s.name,s.sex,s.id
from student s
WHERE a.name like '张%'


--查询姓“李”且全名为三个汉字的学生的姓名
SELECT s.name
from student s
WHERE a.name like '李__'



--查询名字中第2个字为“丽”字的学生的姓名和学号
SELECT s.name,s.id
from student s
WHERE a.name like '_丽%'



--	查询所有不姓“陈”的学生姓名。
SELECT s.name
from student s
WHERE a.name not like '陈%'
