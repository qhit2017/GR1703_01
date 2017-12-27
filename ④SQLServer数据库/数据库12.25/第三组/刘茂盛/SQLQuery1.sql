SELECT * FROM EMP
SELECT *FROM DEPT

--1.查询部门名称是‘SALES’的员工信息 

SELECT e.*
from EMP e INNER JOIN DEPT d
	ON e.DEPTNO=d.DEPTNO
	WHERE d.DNAME='SALES'

--2.查询公司中薪水最高的员工信息 

SELECT *
from EMP e
WHERE e.SAL=(SELECT MAX(a.sal) FROM EMP a)

--3.查询各部门中最高薪水的员工编号，姓名… 

SELECT e.EMPNO,e.ENAME
from EMP e
WHERE e.SAL=any(SELECT MAX(a.SAL)from EMP a GROUP BY a.DEPTNO)

--4.查询各部门最高薪水的员工信息 

SELECT *
from EMP e
WHERE e.SAL=any(SELECT MAX(a.SAL)from EMP a GROUP BY a.DEPTNO)

--5.查询薪水大于该部门平均薪水的员工信息

SELECT *
from EMP e
WHERE e.SAL IN(SELECT a.ENAME from EMP a where a.SAL in(SELECT AVG(b.sal)  from EMP b GROUP BY b.DEPTNO) GROUP BY a.DEPTNO )


--7.查询领导者是‘BLAKE’的员工信息 

SELECT *
from EMP e
where e.MGR=(SELECT a.EMPNO from EMP a WHERE a.ENAME='BLAKE')

--8.查询和SMITH工作相同的员工信息 

SELECT *
from EMP e
WHERE e.JOB=(SELECT a.JOB from EMP a WHERE a.ENAME='SMITH')AND e.ENAME!='SMINTH'

--9.查询平均工资比10部门低的部门编号

SELECT e.DEPTNO
from EMP e INNER JOIN DEPT d
	ON e.DEPTNO=d.DEPTNO
	
	group BY e.DEPTNO
	HAVING AVG(e.SAL) <(SELECT AVG(a.SAL)  from EMP a WHERE a.DEPTNO=10 )
	
--10.查询在NEW YORK工作的所有员工 

SELECT e.*
from DEPT d INNER join EMP e
	ON d.DEPTNO=e.DEPTNO
	WHERE d.LOC='NEW YORK'
	
--11.查询10号部门的员工在整个公司中所占的比例： 

SELECT cast(COUNT(*) AS nvarchar)+'/'+CAST ((SELECT COUNT(*)  from EMP a ) AS nvarchar) as'10号部门员工所占公司比例'
from EMP e
WHERE e.DEPTNO=10

--12、查询比普通员工的最高薪水还要高的领导者姓名

SELECT *from EMP

SELECT e.ENAME
from EMP e
where e.SAL>(SELECT MAX(a.SAL)  from EMP a WHERE a.EMPNO!=a.MGR)

--13、找出薪水最高的五个人 

SELECT TOP 5 *
from EMP e
ORDER BY e.SAL DESC

--14、列出至少有三个员工的所有部门和部门信息

SELECT DISTINCT d.*
from DEPT d INNER JOIN EMP e
	on d.DEPTNO=e.DEPTNO
	WHERE e.DEPTNO in(SELECT b.DEPTNO from DEPT a INNER JOIN EMP b on a.DEPTNO=b.DEPTNO GROUP BY b.DEPTNO HAVING COUNT(*)>=5)

--15、查询最后入职的5名员工

SELECT TOP 5 *
from EMP e
ORDER BY e.HIREDATE DESC

--16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数

SELECT e.JOB,COUNT(*)as'该岗位的总人数'
from EMP e
WHERE e.JOB in(SELECT a.JOB  from EMP a  GROUP BY a.JOB HAVING MIN(a.SAL)>1500)
GROUP BY e.JOB

--17、列出各种工作的最低工资以及从事该工作的雇员姓名

SELECT  e.SAL,e.ENAME
from EMP e
WHERE e.SAL in(SELECT MIN(a.SAL) from EMP a GROUP BY a.JOB)

--18、求薪水最低的部门经理所在部门的名称

SELECT d.DNAME
from DEPT d INNER JOIN EMP e
	on d.DEPTNO=e.DEPTNO
	WHERE e.SAL in(SELECT min(a.sal) from EMP a WHERE a.JOB='MANAGER' GROUP BY a.DEPTNO )
	

SELECT * FROM EMP