SELECT * FROM EMP

--1.查询各部门的最高薪水、最低薪水、平均薪水….

SELECT MAX(a.SAL),MIN(a.SAL),AVG(a.SAL) 

FROM EMP a

--2.查询‘SMITH’的领导姓名 

SELECT a.ENAME

FROM EMP a

WHERE a.EMPNO=1

--3.查询公司所有员工的个数 

SELECT COUNT(a.EMPNO)as'个数'

FROM EMP a

--4.查询公司中最高薪水是多少 

SELECT MAX(a.SAL)

FROM EMP a

--5.查询公司中平均奖金是多少 

SELECT AVG(b.COMM)

FROM EMP b

--6.查询公司中最晚入职的时间 

SELECT max (b.HIREDATE)

 FROM EMP b

--7.查询公司中有奖金的人数 

SELECT COUNT(b.EMPNO)as'人数'

FROM EMP b

WHERE b.COMM IS NOT NULL

--8.查询20部门的最高薪水是多少

SELECT MAX(b.SAL)

FROM EMP b

WHERE b.DEPTNO=20
 
--9.查询所有员工姓名中包含‘A’的最高薪水

SELECT MAX(b.SAL)
 
FROM EMP b

WHERE b.ENAME LIKE'%A%'

--10.查询各岗位的最高薪水，最低薪水。要求只统计薪水>1000的 

SELECT MAX(c.SAL),MIN(c.SAL)

FROM EMP c

WHERE c.SAL>1000

--11.查询各部门的平均薪水及部门编号，要求只列出平均薪水>2000 

SELECT AVG (c.SAL),c.DEPTNO

FROM EMP c

WHERE c.SAL>2000

--12.查询各部门的平均薪水及部门编号，要求只有员工姓名中包含 
--‘A’才参与统计，只列出平均薪水>1500的，按照平均薪水降序排列
 
SELECT AVG(f.SAL),f.DEPTNO 

FROM EMP f

where f.ENAME LIKE'%A%'

GROUP BY f.DEPTNO 

HAVING AVG(f.SAL)>1500

ORDER BY AVG(f.SAL)desc  
 
--13.查询员工表中工资大于1600的员工的姓名和工资 

SELECT C.ENAME,C.SAL

FROM EMP C

WHERE C.SAL>1600

--14.查询员工表中员工号是17的员工的姓名和部门编号 

SELECT c.ENAME,c.DEPTNO

FROM EMP c

WHERE c.EMPNO=17

--15.选择员工表中工资不在4000到5000内的员工的姓名和工资 

SELECT c.ENAME,c.SAL

FROM EMP c

WHERE c.SAL NOT BETWEEN 4000 AND 5000

--16.选择员工表中在20和30部门工作的员工的姓名和部门号 

SELECT c.ENAME,c.DEPTNO

FROM EMP c

WHERE c.JOB BETWEEN 20 AND 30
--17.选择员工表中没有管理者的员工姓名及职位，按职位排序 

SELECT d.ENAME,d.JOB

FROM EMP d

WHERE d.MGR IS NULL

ORDER BY d.JOB

--18.选择员工表中有奖金的员工姓名，工资和奖金，按工资倒序排列 

SELECT d.ENAME,d.SAL,d.COMM

FROM EMP d

WHERE d.COMM IS not NULL

ORDER BY d.SAL desc

--19.选择员工表中员工姓名的第三个字母是A的员工姓名 

SELECT d.ENAME

FROM EMP d

WHERE d.ENAME LIKE'__A%'

--20.列出部门表中的部门名称和所在城市

SELECT *

FROM DEPT a

--21.显示员工表中的不重复的岗位job 

SELECT DISTINCT f.JOB

FROM EMP f

--22.连接员工表中的员工姓名、职位、薪水，列之间用逗号连接，列头显示成简介 

SELECT t.ENAME,t.JOB,t.SAL,'名字是'+t.ENAME+',职位是'+t.JOB+',薪水是'+CAST(t.SAL AS nvarchar)  as'描述'

FROM EMP t

--23.查询员工表中员工号，姓名，工资，以及工资提高百分之20之后的结果 

SELECT f.EMPNO,f.ENAME,f.SAL,f.SAL*1.2

FROM EMP f


--24.查询员工的姓名和工资数，条件限定为工资数必须大于1200，并且查询结果按入职时间进行排序
--早入职的员工排在前面 

SELECT *

FROM

--25.列出除了ACCOUNTING部门之外还有什么部门 

SELECT *

FROM

--26.把雇员按部门分组，求最高薪水，部门号 要求过滤掉名字中第二个字母是’A’的员工，
-- 并且部门的平均薪水 > 3000,按照部门编号倒序排列 

SELECT MAX(f.SAL),f.DEPTNO

FROM EMP f

WHERE f.ENAME LIKE'_A%' OR f.SAL>3000

GROUP BY f.DEPTNO

ORDER BY f.DEPTNO DESC 

