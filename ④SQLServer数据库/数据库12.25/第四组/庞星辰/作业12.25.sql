SELECT *
from EMP 

--1.查询部门名称是‘SALES’的员工信息 
select a.*
from EMP a inner JOIN DEPT s ON a.DEPTNO = s.DEPTNO
AND s.DNAME='SALES'
--2.查询公司中薪水最高的员工信息 
select a.*  from EMP a WHERE a.SAL=(SELECT MAX(s.SAL) from EMP s)
--3.查询各部门中最高薪水的员工编号，姓名… 
select a.EMPNO,a.ENAME
from EMP a 
WHERE a.SAL in(SELECT MAX(s.SAL) from EMP s GROUP BY s.DEPTNO)
--4.查询各部门最高薪水的员工信息 
select a.*
from EMP a
WHERE a.SAL IN(SELECT MAX(s.SAL) from EMP s GROUP BY s.DEPTNO)
--5.查询薪水大于该部门平均薪水的员工信息 
select * FROM EMP a WHERE a.SAL>AVG(a.SAL) 
--6.查询部门名称是‘SALES’的员工信息 
select * FROM EMP a INNER JOIN DEPT s ON a.DEPTNO=s.DEPTNO AND s.DNAME='SALES'
--7.查询领导者是‘BLAKE’的员工信息 
SELECT * FROM EMP s WHERE s.MGR IN(select a.EMPNO FROM EMP a WHERE a.ENAME='BLAKE')
--8.查询和SMITH工作相同的员工信息 
SELECT * FROM EMP s WHERE s.JOB =(select a.JOB from EMP a WHERE a.ENAME='SMITH' )
--9.查询平均工资比10部门低的部门编号 
select a.DEPTNO
from EMP a
GROUP BY a.DEPTNO
HAVING AVG(a.SAL)<(SELECT avg(s.SAL) from EMP s WHERE s.DEPTNO=10)
--10.查询在NEW YORK工作的所有员工 
select * from EMP a INNER JOIN DEPT  s ON a.DEPTNO=s.DEPTNO AND s.loc='NEW YORK'
--11.查询10号部门的员工在整个公司中所占的比例： 

--12、查询比普通员工的最高薪水还要高的领导者姓名 
select max(a.SAL)from EMP a
--13、找出薪水最高的五个人 
select TOP 5*
from EMP a
ORDER BY a.SAL DESC
--14、列出至少有三个员工的所有部门和部门信息
select s.* from EMP a INNER JOIN DEPT s ON a.DEPTNO=s.DEPTNO 
GROUP BY a.DEPTNO,s.DEPTNO,s.DNAME,s.LOC 
HAVING COUNT(a.EMPNO)>=3
-- 15、查询最后入职的5名员工
select TOP 5 a.*
from EMP a
ORDER BY a.HIREDATE DESC 
--16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数
select a.JOB,COUNT(*)  from EMP a
GROUP BY a.JOB
HAVING MIN(a.SAL)>1500
--17、列出各种工作的最低工资以及从事该工作的雇员姓名
select s.ENAME from EMP s WHERE s.sal in(select MIN(a.SAL) from EMP a GROUP BY a.JOB)
--18、求薪水最低的部门经理所在部门的名称

