SELECT*FROM EMP;
SELECT*FROM DEPT;

--1.查询各部门的最高薪水、最低薪水、平均薪水….
 SELECT  a.JOB ,max(A.sal)as '最高薪水',min(a.sal) as '最低薪水',avg(A.sal) as '平均薪水' 
 from EMP   a
 GROUP BY a.JOB
 
--2.查询‘SMITH’的领导姓名 
SELECT*
FROM EMP a

WHERE a.ENAME like 'smith'

--3.查询公司所有员工的个数 
SELECT COUNT(*) as'人数' 
FROM EMP a

--4.查询公司中最高薪水是多少 
SELECT	max(a.SAL)
from emp a

--5.查询公司中平均奖金是多少 
SELECT AVG(a.comm)
from EMP  a

--6.查询公司中最晚入职的时间 
SELECT MAX(a.HIREDATE)  
from EMP a

--7.查询公司中有奖金的人数 
SELECT  COUNT(*)
from EMP a
where a.comm   IS NOT  null

--8.查询20部门的最高薪水是多少 
SELECT  MAX(a.SAL) 
from EMP a
where a.deptno=20

--9.查询所有员工姓名中包含‘A’的最高薪水 
SELECT  MAX(a.SAL ) 
from EMP a
where a.ENAME LIKE  '%A%'

--10.查询各岗位的最高薪水，最低薪水。要求只统计薪水>1000的 
SELECT MAX(a.SAL)as '最高薪水',MIN(a.SAL )  as'最低薪水'
from EMP a
where a.SAL >1000

--11.查询各部门的平均薪水及部门编号，要求只列出平均薪水>2000 
SELECT  avg(a.SAL )
from EMP a
GROUP BY a.DEPTNO 
HAVING   avg (a.SAL)>200

--12.查询各部门的平均薪水及部门编号，要求只有员工姓名中包含 
--‘A’才参与统计，只列出平均薪水>1500的，按照平均薪水降序排列 
SELECT    AVG(a.SAL ),a.DEPTNO 
from EMP a
WHERE a.ENAME LIKE '%A%'
GROUP BY  a.DEPTNO
HAVING  AVG(a.SAL )>1500
ORDER BY avg(a.sal) desc 

--13.查询员工表中工资大于1600的员工的姓名和工资 
SELECT a.ENAME,a.SAL 
from EMP a 
WHERE a.SAL >1600

--14.查询员工表中员工号是17的员工的姓名和部门编号 

SELECT a.ENAME ,a.DEPTNO
from EMP a 
WHERE a.EMPNO=17

--15.选择员工表中工资不在4000到5000内的员工的姓名和工资 
SELECT a.ENAME,a.SAL 
from EMP a 
WHERE a.SAL NOT BETWEEN 4000 AND 5000

--16.选择员工表中在20和30部门工作的员工的姓名和部门号 
SELECT a.ENAME ,a.DEPTNO 
from EMP a
where a.DEPTNO IN (20,30)


--17.选择员工表中没有管理者的员工姓名及职位，按职位排序 
SELECT a.ENAME ,a.JOB 
from EMP a
where a.mgr IS NULL 

--18.选择员工表中有奖金的员工姓名，工资和奖金，按工资倒序排列 
SELECT a.ENAME ,a.SAL ,a.COMM 
from EMP a 
WHERE a.comm IS NOT NULL 
ORDER BY a.SAL DESC 


--19.选择员工表中员工姓名的第三个字母是A的员工姓名 
SELECT a.ENAME
from EMP a 
WHERE a.ENAME='__A%'

--20.列出部门表中的部门名称和所在城市 
SELECT a.DEPTNO 
from EMP a 


--21.显示员工表中的不重复的岗位job 



--22.连接员工表中的员工姓名、职位、薪水，列之间用逗号连接，列头显示成简介 
SELECT A.ENAME AS'姓名',A.JOB as' 职位',A.SAL as'薪水' 
FROM EMP A 

--23.查询员工表中员工号，姓名，工资，以及工资提高百分之20之后的结果 


--24.查询员工的姓名和工资数，条件限定为工资数必须大于1200，并且查询结果按入职时间进行排序。早入职的员工排在前面 

SELECT a.ENAME,a.SAL
from EMP a
where a.SAL >1200
ORDER BY a.hiredate asc

--26.把雇员按部门分组，求最高薪水，部门号 要求过滤掉名字中第二个字母是’A’的员工， 并且部门的平均薪水 > 3000,按照部门编号倒序排列 
SELECT a.ENAME
from EMP a 
WHERE a.ENAME!='_A'
HAVING avg(a.SAL)>3000
ORDER BY a.DEPTNO ASC  






