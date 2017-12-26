--	查询全体学生的学号与姓名。
SELECT a.Sno,a.Sname from a
--2.	查询全体学生的姓名、学号、专业。
SELECT a.name,a.xuehao,a.zhuanye from a
--3.	查全体学生的姓名及其年龄。
SELECT a.name,a.age from a
--4.	查询“计算机科学”专业全体学生的名单。
SELECT  *FROM student a where a.Sdept='计算机科学'
--5.	查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT a.name ,a.age
FROM student a WHERE age<20
--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
SELECT a.name,a.age,a.score
from student a WHERE a.age<18 ORDER BY a.score DESC
--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。
select a.Sno
from student a WHERE a.score<60 ORDER BY a.score DESC
--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
SELECT a.name,a.Sdept,a.age
from student a WHERE a.age=<22AND a.age>=18
--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。
SELECT a.name,a.Sdept,a.age
from student a WHERE a.age>23AND a.age <20
--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
select a.name,a.sex
from student a WHERE a.Sdept='信息系'OR a.Sdept=='数学系' or a.Sdept='计算机科学系'
--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT a.name,a.sex
FROM student a where a.Sdept!='信息系' or  a.Sdept='数学系' or a.Sdept='计算机科学系'
--12.	查询学号为09102040203的学生的详细情况。
select*FROM student a where a.xuehao=09102040203
--13.	查询所有姓“张”学生的姓名、学号和性别。
select*from studnet a where  a.name LIKE'张%'
--14.	查询姓“李”且全名为三个汉字的学生的姓名。
SELECT*FROM student a where a.name like'李__'
--15.	查询名字中第2个字为“丽”字的学生的姓名和学号。
select a.name,a.xuehao
FROM student a WHERE a.name like'_丽%'
--16.	查询所有不姓“陈”的学生姓名。
select a.name
from student a where a.name NOT LIKE '陈%'
















