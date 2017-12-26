







--查询全体学生的学号与姓名。
SELECT a.id,s.sname
from student a

--查询全体学生的姓名、学号、专业
SELECT b.id,.sname,b.major
from student b

--查全体学生的姓名及其年龄。
SELECT c.sname,c.age
from student c

--查询“计算机科学”专业全体学生的名单。
SELECT *
from student d
WHERE d.major='计算机科学'

--查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT e.sname,e.age
from student e
WHERE e.age<20

--查询未成年的学生的姓名、年龄、成绩，并按照成绩排序
SELECT f.sname,f.age,f.score
from student f
order by f.score

--查询成绩有不及格的学生的学号，并按照成绩降序排列。
SELECT g.id
from student g
order by g.score asc

--查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
SELECT h.name,h.major,h.age
from student h
WHERE h.age>18 AND h.age<23


--查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT j.name,j.sex
from student j
WHERE j.major='IS' OR j.major='MA' OR j.major='CS'


--查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别
SELECT k.name,k.sex
from student k
WHERE (k.major!='IS' AND  k.major!='MA' AND  k.major!='CS')

--查询学号为09102040203的学生的详细情况。
SELECT *
from student l
WHERE l.id='09102040203'


--查询所有姓“张”学生的姓名、学号和性别。
SELECT q.name,q.sex,q.id
from student q
WHERE q.name like '张%'


--查询姓“李”且全名为三个汉字的学生的姓名
SELECT w.name
from student w
WHERE w.name like '李__'



--查询名字中第2个字为“丽”字的学生的姓名和学号
SELECT e.name,e.id
from student e
WHERE e.name like '_丽%'



--	查询所有不姓“陈”的学生姓名。
SELECT s.name
from student s
WHERE a.name notlike '陈%'
