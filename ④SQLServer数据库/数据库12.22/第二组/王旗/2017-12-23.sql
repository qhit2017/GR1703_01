SELECT*
from EMP 
 --1.查询各部门的最高薪水、最低薪水、平均薪水…. 
SELECT a.DEPTNO as'部门编号', MAX(a.SAL)AS'最高薪水',MIN(a.SAL)最低薪水,avg(a.SAL)as'平均薪水' 
FROM EMP a
GROUP BY a.DEPTNO

--2.查询‘SMITH’的领导姓名 
SELECT a.ENAME as'姓名'	
FROM EMP a
WHERE a.ENAME='SMITH'
GROUP BY a.ENAME

--3.查询公司所有员工的个数 
SELECT  a.ENAME
from EMP a
GROUP BY a.ENAME

--4.查询公司中最高薪水是多少 
SELECT MAX(a.SAL)
from EMP a


--5.查询公司中平均奖金是多少 
SELECT AVG(a.COMM)
from EMP a

--6.查询公司中最晚入职的时间 
SELECT MAX(a.HIREDATE)AS '最晚入职时间' 
from EMP a

--7.查询公司中有奖金的人数 
SELECT *
from EMP a
WHERE a.COMM IS NOT NULL

--8.查询20部门的最高薪水是多少 
SELECT MAX(a.SAL)
FROM EMP a
WHERE a.DEPTNO=20


--9.查询所有员工姓名中包含‘A’的最高薪水 
SELECT MAX(a.SAL)
from EMP a
WHERE a.ENAME LIKE'%A%'

--10.查询各岗位的最高薪水，最低薪水。要求只统计薪水>1000的 
SELECT a.JOB as'岗位',max(a.SAL)as '最高薪水',MIN(a.SAL) as '最低薪水' 
from EMP a
WHERE a.SAL>1000
GROUP BY a.JOB
--11.查询各部门的平均薪水及部门编号，要求只列出平均薪水>2000 
SELECT a.DEPTNO as'部门编号',avg(a.SAL)as '平均薪水'
from EMP a
GROUP BY a.DEPTNO
HAVING avg(a.SAL)>2000

--12.查询各部门的平均薪水及部门编号，要求只有员工姓名中包含 
--‘A’才参与统计，只列出平均薪水>1500的，按照平均薪水降序排列 

--13.查询员工表中工资大于1600的员工的姓名和工资 
SELECT a.ENAME as'姓名' ,a.SAL as'工资'
FROM EMP  a
WHERE a.SAL>1600
--14.查询员工表中员工号是17的员工的姓名和部门编号 
SELECT a.ENAME as'姓名',a.DEPTNO as'部门编号'
from EMP  a
WHERE a.EMPNO =17

--15.选择员工表中工资不在4000到5000内的员工的姓名和工资 
SELECT a.ENAME as'姓名',a.SAL as'工资'
from EMP a
WHERE a.SAL   NOT BETWEEN 4000 and 5000

--16.选择员工表中在20和30部门工作的员工的姓名和部门号 
SELECT a.ENAME as '姓名',a.DEPTNO as'部门号'
FROM EMP a
WHERE a.DEPTNO in (20,30)

--17.选择员工表中没有管理者的员工姓名及职位，按职位排序 
SELECT a.ENAME as '姓名' ,a.JOB as '职位'
from EMP a
WHERE a.JOB NOT IN('MANAGER')
ORDER BY a.JOB 


--18.选择员工表中有奖金的员工姓名，工资和奖金，按工资倒序排列 
SELECT a.ENAME as'姓名' ,a.SAL as '工资',a.COMM as '奖金'
from EMP a
WHERE a.COMM is NOT NULL
ORDER BY a.SAL desc


--19.选择员工表中员工姓名的第三个字母是A的员工姓名 
SELECT a.ENAME'姓名'
from EMP a
WHERE a.ENAME like'__A%'

--20.列出部门表中的部门名称和所在城市
SELECT a.DEPTNO
from EMP a
GROUP BY  a.DEPTNO
--21.显示员工表中的不重复的岗位job
SELECT DISTINCT a.JOB
from EMP a 
GROUP BY a.JOB

--22.连接员工表中的员工姓名、职位、薪水，列之间用逗号连接，列头显示成简介 
SELECT *,'姓名:'+'ENAME'+',职位:'+'JOB'+',薪水:'+'SAL' AS '描述'
from EMP 

--23.查询员工表中员工号，姓名，工资，以及工资提高百分之20之后的结果
SELECT a.*,'工号'+a.EMPNO+'姓名'+a.ENAME+'工资'+CAST(a.SAL*2% as nvarchar) 
FROM EMP a 
GROUP BY a.EMPNO,a.ENAME,a.SAL
--24.查询员工的姓名和工资数，条件限定为工资数必须大于1200，并且查询结果按入职时间进行排序。早入职的员工排在前面 
SELECT a.ENAME as'姓名',a.SAL as'工资',a.HIREDATE as'时间'
from EMP a
WHERE a.SAL>1200
GROUP BY a.ENAME,a.SAL ,a.HIREDATE
ORDER BY a.HIREDATE


--25.列出除了ACCOUNTING部门之外还有什么部门 
SELECT a.DEPTNO
from EMP a
WHERE a.DEPTNO not IN ('ACCOUNTING')
GROUP BY a.DEPTNO
--26.把雇员按部门分组，求最高薪水，部门号 要求过滤掉名字中第二个字母是’A’的员工， 并且部门的平均薪水 > 3000,按照部门编号倒序排列 
SELECT  a.DEPTNO as'部门编号', MAX(a.SAL)as'最高薪水'
from EMP a
WHERE a.ENAME not LIKE'__A%'  
GROUP BY a.DEPTNO
HAVING  avg(a.SAL)>3000
ORDER BY a.DEPTNO desc




