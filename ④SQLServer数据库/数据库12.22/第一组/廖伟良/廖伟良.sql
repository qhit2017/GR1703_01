--1.查询各部门的最高薪水、最低薪水、平均薪水…. 
SELECT a.DEPTNO as'部门',MAX(a.SAL)as'最高薪水',MIN(a.SAL)as'最低薪水',AVG(a.SAL)as'平均薪水'
from emp a
GROUP BY a.DEPTNO

--2.查询‘SMITH’的领导姓名
SELECT DISTINCT b.MGR
from EMP b 
WHERE b.ENAME='SMITH'

--3.查询公司所有员工的个数 
SELECT COUNT(EMPNO) as'员工人数'
from EMP 

--4.查询公司中最高薪水是多少 
SELECT MAX(SAL) as'最高薪水'
from EMP

--5.查询公司中平均奖金是多少 
SELECT avg(COMM) as'平均奖金'
from EMP

--6.查询公司中最晚入职的时间 
SELECT max(HIREDATE) as'最晚入职时间'
from EMP

--7.查询公司中有奖金的人数 
SELECT COUNT(COMM) as'有奖金的人数'
from EMP
WHERE COMM IS NOT NULL 

--8.查询20部门的最高薪水是多少 
SELECT MAX(sal)
from EMP
WHERE DEPTNO='20'

--9.查询所有员工姓名中包含‘A’的最高薪水 
SELECT MAX(c.SAL) AS'最高薪水'
from EMP c
where c.ENAME LIKE '%A%'

--10.查询各岗位的最高薪水，最低薪水。要求只统计薪水>1000的 
SELECT d.JOB as'岗位',MAX(d.SAL)as'最高薪水',MIN(d.SAL)as'最低薪水'
from EMP d
WHERE d.SAL>1000
GROUP BY d.JOB

--11.查询各部门的平均薪水及部门编号，要求只列出平均薪水>2000 
SELECT e.DEPTNO as'部门编号',AVG(e.SAL) as'平均薪水'
from EMP e
WHERE e.SAL>2000
GROUP BY e.DEPTNO

--12.查询各部门的平均薪水及部门编号，要求只有员工姓名中包含‘A’才参与统计，只列出平均薪水>1500的，按照平均薪水降序排列 
SELECT f.DEPTNO as'部门编号',AVG(f.SAL) as'平均薪水'
from EMP f
WHERE f.ename like '%A%' and f.SAL>1500
GROUP BY f.DEPTNO
ORDER BY AVG(f.SAL) DESC

--13.查询员工表中工资大于1600的员工的姓名和工资 
SELECT ename,sal
from EMP
where SAL>1600

--14.查询员工表中员工号是17的员工的姓名和部门编号 
SELECT ename,deptno
from EMP
where EMPNO='17'

--15.选择员工表中工资不在4000到5000内的员工的姓名和工资 
SELECT ENAME,SAL
from emp
WHERE SAL NOT BETWEEN 4000 AND 5000

--16.选择员工表中在20和30部门工作的员工的姓名和部门号 
SELECT ENAME,DEPTNO
from emp
WHERE DEPTNO IN(20,30)

--17.选择员工表中没有管理者的员工姓名及职位，按职位排序 
SELECT ENAME,JOB
from EMP
WHERE MGR IS NULL
ORDER BY JOB

--18.选择员工表中有奖金的员工姓名，工资和奖金，按工资倒序排列 
SELECT ENAME,SAL,COMM
from EMP
WHERE COMM IS NOT NULL
ORDER BY SAL desc

--19.选择员工表中员工姓名的第三个字母是A的员工姓名 
SELECT ENAME
from emp
WHERE ENAME LIKE'__A%'

--20.列出部门表中的部门名称和所在城市 
SELECT DNAME,LOC
from DEPT

--21.显示员工表中的不重复的岗位job 
SELECT JOB as'岗位'
from emp
GROUP BY JOB
HAVING COUNT(JOB)=1

--22.连接员工表中的员工姓名、职位、薪水，列之间用逗号连接，列头显示成简介 
SELECT ENAME+','+JOB+','+cast(SAL AS nvarchar) as'简介'
from emp

--23.查询员工表中员工号，姓名，工资，以及工资提高百分之20之后的结果 
SELECT EMPNO,ENAME,SAL,CAST(SAL AS float)*1.2 as'工资提高后'
from EMP

--24.查询员工的姓名和工资数，条件限定为工资数必须大于1200，并且查询结果按入职时间进行排序。早入职的员工排在前面 
SELECT ENAME,sal
from EMP
WHERE SAL>1200
ORDER BY HIREDATE

--25.列出除了ACCOUNTING部门之外还有什么部门 
SELECT DNAME
from DEPT
WHERE DNAME NOT LIKE'ACCOUNTING'

--26.把雇员按部门分组，求最高薪水，部门号 要求过滤掉名字中第二个字母是’A’的员工，并且部门的平均薪水 > 3000,按照部门编号倒序排列
SELECT MAX(SAL) as'最高薪水',DEPTNO as'部门编号'
from EMP
WHERE ENAME NOT LIKE'_A%' 
GROUP BY DEPTNO
HAVING AVG(SAL)>3000
ORDER BY DEPTNO DESC

