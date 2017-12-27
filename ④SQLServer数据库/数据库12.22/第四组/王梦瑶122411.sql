--1.查询各部门的最高薪水、最低薪水、平均薪水…. 
SELECT MAX(a.sal)as '最高薪水',min(a.sal)as '最低薪水',AVG(a.sal)as '平均薪水'  
from emp a 
--2.查询‘SMITH’的领导姓名
SELECT a.ENAME
from EMP a 
WHERE a.EMPNO in(SELECT a.MGR from EMP a WHERE a.ENAME='SMITH')
--3.查询公司所有员工的个数
SELECT COUNT(a.EMPNO) as '个数'
from EMP a 
--4.查询公司中最高薪水是多少
SELECT MAX(a.SAL)as '最高薪水' 
from EMP a 
--5.查询公司中平均奖金是多少
SELECT AVG(a.COMM)as '平均奖金' 
from EMP a 
--6.查询公司中最晚入职的时间
SELECT MIN(a.HIREDATE)as '最晚入职时间' 
from EMP a 
--7.查询公司中有奖金的人数
SELECT COUNT(a.COMM) as '有奖金的人数'
from EMP a 
WHERE a.COMM IS NOT NULL 
--8.查询部门的最高薪水是多少
SELECT MAX(a.SAL)as '最高薪水'
from EMP a 
WHERE a.DEPTNO =20
--9.查询所有员工姓名中包含‘A’的最高薪水
SELECT MAX(a.SAL) as '最高薪水'
from EMP a 
WHERE a.ENAME LIKE '%A%'
--10.查询各岗位的最高薪水，最低薪水。要求只统计薪水>1000的
SELECT a.JOB, MAX(a.SAL )as '最高薪水',MIN(a.SAL)as '最低薪水'  
from EMP a 
Where a.sal>1000
GROUP BY a.JOB
--11.查询各部门的平均薪水及部门编号，要求只列出平均薪水>2000 
SELECT  a.DEPTNO, AVG(a.SAL) as '平均薪水' 
from EMP a
GROUP BY a.DEPTNO
HAVING AVG(a.SAL)>2000
--12.查询各部门的平均薪水及部门编号，要求只有员工姓名中包含
--‘A’才参与统计，只列出平均薪水>1500的，按照平均薪水降序排列
SELECT a.DEPTNO, AVG(a.SAL)as '平均薪水'
from EMP a 
WHERE a.ENAME LIKE '%A%' 
GROUP BY a.DEPTNO
HAVING AVG(a.SAL)>1500
ORDER BY AVG(a.SAL) DESC
 --13.查询员工表中工资大于的员工的姓名和工资
SELECT a.ENAME,a.SAL
from EMP a 
WHERE a.SAL>1600
--14.查询员工表中员工号是的员工的姓名和部门编号
SELECT a.ENAME,a.DEPTNO
from EMP a 
WHERE a.EMPNO=17
--15.选择员工表中工资不在到内的员工的姓名和工资
SELECT a.ENAME,a.SAL
from EMP a
WHERE a.SAL NOT BETWEEN 40000 AND 5000
--16.选择员工表中在和部门工作的员工的姓名和部门号
SELECT a.ENAME,a.DEPTNO
from EMP a 
WHERE a.DEPTNO IN (20,30) 
--17.选择员工表中没有管理者的员工姓名及职位，按职位排序
SELECT a.ENAME ,a.JOB
from EMP a
WHERE a.MGR IS NULL
ORDER BY a.JOB 
--18.选择员工表中有奖金的员工姓名，工资和奖金，按工资倒序排列
SELECT a.ENAME,a.SAL,a.COMM
from EMP a 
WHERE a.COMM IS NOT NULL
ORDER BY a.SAL DESC
--19.选择员工表中员工姓名的第三个字母是A
SELECT a.ENAME
from EMP a 
WHERE a.ENAME LIKE '__A%' 
--20.列出部门表中的部门名称和所在城市(有错）
SELECT s.DNAME,s.LOC
from DEPT s
--21.显示员工表中的不重复的岗位job 
SELECT DISTINCT a.JOB
from EMP a 
--22.连接员工表中的员工姓名、职位、薪水，列之间用逗号连接，列头显示成简介
SELECT  '姓名'+a.ENAME+',职位'+a.JOB+',薪水'+cast(a.sal as nvarchar)as '简介'
from EMP a 
--23.查询员工表中员工号，姓名，工资，以及工资提高百分之之后的结果
SELECT a.EMPNO,a.ENAME,a.SAL,a.SAL*1.2 as '工资提高百分之'
from EMP a 
--24.查询员工的姓名和工资数，条件限定为工资数必须大于1200，并且查询结果按入职时间进行排序。早入职的员工排在前面
SELECT a.ENAME,a.SAL,a.HIREDATE
from EMP a 
WHERE a.SAL>1200
ORDER BY a.HIREDATE 
--25.列出除了ACCOUNTING部门之外还有什么部门
SELECT a.JOB
from EMP a
WHERE a.JOB NOT IN  ('ACCOUNTING')
--26.把雇员按部门分组，求最高薪水，部门号要求过滤掉名字中第二个字母是’A’的员工，
-- 并且部门的平均薪水> 3000,按照部门编号倒序排列
SELECT a.DEPTNO ,MAX(a.SAL)as '最高薪水'
from EMP a 
WHERE a.ENAME LIKE '_A%'
GROUP BY a.DEPTNO 
HAVING AVG(a.SAL) >3000
ORDER BY a.DEPTNO DESC
