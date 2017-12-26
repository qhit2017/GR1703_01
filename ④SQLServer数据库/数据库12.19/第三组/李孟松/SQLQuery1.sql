INSERT INTO student VALUES('001','张3','男',18,'计算机科学系',80);
INSERT INTO student VALUES('002','李4','男',21,'汽修系',78);
INSERT INTO student VALUES('003','李明','女',20,'数学系',70);
INSERT INTO student VALUES('004','李磊','男',19,'电气一体化系',90);
INSERT INTO student VALUES('005','刘德华','男',19,'音乐系',92);
INSERT INTO student VALUES('006','成龙','男',18,'体育系',96);
INSERT INTO student VALUES('007','杨幂','女',20,'艺术系',80);
INSERT INTO student VALUES('008','王五','男',19,'计算机科学系',70);
INSERT INTO student VALUES('009','杨文迪','女',20,'数学系',55);
INSERT INTO student VALUES('010','刘翔','男',22,'计算机科学',50);
INSERT INTO student VALUES('011','史蒂夫','男',23,'信息系',30);


SELECT *
FROM student 



SELECT a.sno,a.sname
from student a



SELECT b.sname,b.sno,b.sdept
from student b



SELECT c.sname ,c.sage 
from student c


SELECT *
FROM student d
WHERE d.sdept='计算机科学系'



SELECT e.sname,e.sage 
FROM student e
where e.sage <20



SELECT f.sname,f.sage ,f.sgrade
from student f
WHERE f.sage<18
ORDER BY f.sgrade DESC 



SELECT g.sno 
from student g
WHERE g.sgrade<60
ORDER BY g.sgrade desc



SELECT h.sname,h.sdept,h.sage
from student h
WHERE h.sage>=18 AND h.sage<=22



SELECT i.sname,i.sdept,i.sage
from student i
WHERE i.sage<20 OR i.sage>23



SELECT j.sname,j.ssex
FROM student j
where j.sdept='信息系' OR j.sdept ='数学系' OR j.sdept='计算机科学系'



SELECT k.sname,k.ssex
from student k
WHERE k.sdept!='信息系' AND k.sdept!='数学系' AND k.sdept!='计算机科学系'



SELECT *
FROM student l
WHERE l.sno='09102040203'



SELECT m.sname,m.sno,m.ssex
from student m
WHERE m.sname LIKE '张%'


SELECT n.sname
from student n
WHERE n.sname LIKE '李__'



SELECT o.sname,o.sno 
from student o
WHERE o.sname LIKE '_丽%'



SELECT p.sname
from student p
WHERE p.sname NOT  LIKE '陈%'

--测试：

INSERT INTO student VALUES ('001','张三','男',18,'师傅',20)
--会报错，字段（sno）为主键，不能重复

INSERT INTO student VALUES ('012',null,'男',18,'师傅',20)
--会报错 姓名不能为空

INSERT INTO student(sno,sname,sage,sdept,sgrade) VALUES ('012','张三',18,'师傅',20)
--不会报错，查询后发现学号为 012 的学生性别默认为 男

SELECT * from student 
DELETE FROM  student WHERE sno ='012'






