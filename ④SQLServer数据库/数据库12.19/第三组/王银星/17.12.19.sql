SELECT *
FROM Student 

SELECT a.Sno AS '学号',a.Sname AS '姓名',a.Ssex AS '性别',
		a.Sage AS '年龄',a.Sdept AS '专业名',a.Grade AS '成绩'
from Student a
--查询全体学生的学号与姓名。
SELECT a.Sno ,a.Sname 
FROM Student a
--查询全体学生的姓名、学号、专业
SELECT a.Sname ,a.Sno ,a.Sdept 
from Student a 
--查全体学生的姓名及其年龄
SELECT a.Sname ,a.Sage 
FROM Student a
--查询“计算机科学”专业全体学生的名单
SELECT *
FROM Student a
WHERE a.Sdept ='计算机科学'
--查询所有年龄在20岁以下的学生姓名及其年龄
SELECT a.Sname ,a.Sage 
FROM Student a
WHERE a.Sage <20
--查询未成年的学生的姓名、年龄、成绩，并按照成绩排序
SELECT a.Sname ,a.Sage ,a.Grade 
FROM Student a
WHERE a.Sage <18
ORDER BY a.Grade ASC 
--查询成绩有不及格的学生的学号，并按照成绩降序排列
SELECT a.Sno 
FROM Student a
WHERE a.Grade <60
ORDER BY a.Grade DESC 
--查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
SELECT a.Sname ,a.Sdept ,a.Sage 
FROM Student a
WHERE a.Sage >=18 AND a.Sage <=22
--查询年龄不在20~23岁之间的学生姓名、专业和年龄
SELECT a.Sname ,a.Sdept ,a.Sage 
FROM Student a
WHERE a.Sage<20 AND a.Sage>23
--查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别
SELECT a.Sname ,a.Ssex 
FROM Student a
WHERE a.Sdept='信息系'OR a.Sdept ='数学系'OR a.Sdept ='计算机科学系'
--查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别
SELECT a.Sname ,a.Ssex 
FROM Student a
WHERE a.Sdept!='信息系'AND a.Sdept !='数学系'AND  a.Sdept !='计算机科学系'
--查询学号为09102040203的学生的详细情况
SELECT *
FROM Student a
WHERE a.Sno ='09102040203'
--查询所有姓“张”学生的姓名、学号和性别
SELECT a.Sname ,a.Sno ,a.Ssex 
FROM Student a
WHERE a.Sname ='张%'
--查询姓“李”且全名为三个汉字的学生的姓名
SELECT a.Sname 
FROM Student a
WHERE a.Sname ='李__'
--查询名字中第2个字为“丽”字的学生的姓名和学号
SELECT a.Sname ,a.Sno 
FROM Student a
WHERE a.Sname ='_丽%'
--查询所有不姓“陈”的学生姓名
SELECT a.Sname 
FROM Student a
WHERE a.Sname !='陈%'












