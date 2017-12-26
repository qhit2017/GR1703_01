SELECT * FROM student
INSERT INTO student VALUES ('01','黎明','男',18,'计算机',30);
INSERT INTO student (no,name,sex,age,grade) VALUES ('02','李卫','男',19,20);
INSERT INTO student VALUES ('03','老铁','男',17,'计算机',90);
INSERT INTO student VALUES ('04','王虎','女',20,'会计',85);
INSERT INTO student VALUES ('05','陈三','女',15,'语教',83);
INSERT INTO student VALUES ('06','陈四','男',14,'园艺',60);
INSERT INTO student VALUES ('09102040203','韩系','男',23,'园艺',65);
DELETE FROM student
--1.	查询全体学生的学号与姓名。
SELECT * FROM student
--2.	查询全体学生的姓名、学号、专业。
SELECT a.name,a.no,a.dept
from student a
--3.	查全体学生的姓名及其年龄。
SELECT b.name,b.age
from student b
--4.	查询“计算机科学”专业全体学生的名单。
SELECT *
from student c  WHERE c.dept='计算机'
--5.	查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT d.name,d.age
from student d WHERE d.age<20
--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
SELECT f.name,f.age,f.grade
from student f WHERE f.age<16 ORDER BY f.age
--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。
SELECT e.no
from student e WHERE e.grade<60 ORDER BY e.grade DESC
--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
SELECT f.name,f.dept,f.age
from student f WHERE f.age>=18 AND f.age<=22
--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。
SELECT g.name,g.dept,g.age
from student g WHERE NOT (g.age>=20 AND g.age<=23)
--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别
SELECT h.name,h.sex
from student h WHERE h.dept='计算机' OR h.dept='信息系' OR h.dept='数学系'
--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT  name,sex
from student where NOT (dept='信息系' OR dept='数学系' OR dept='计算机')
--12.	查询学号为09102040203的学生的详细情况。
SELECT * 
from student WHERE no='09102040203'
--13.	查询所有姓“张”学生的姓名、学号和性别。
SELECT name,no,sex
from student  WHERE name LIKE '张%'
--14.	查询姓“李”且全名为三个汉字的学生的姓名。
SELECT name
from student WHERE name LIKE '李__'
--15.	查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT name,no
from student where name LIKE '_丽%'
--16.	查询所有不姓“陈”的学生姓名。
SELECT name
from student WHERE name not LIKE '陈%'

