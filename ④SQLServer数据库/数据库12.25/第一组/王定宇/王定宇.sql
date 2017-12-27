
--1.查询部门名称是‘SALES’的员工信息 
SELECT e.*
from DEPT d INNER JOIN EMP e ON d.DEPTNO=e.DEPTNO
AND d.DNAME='SALES'

--2.查询公司中薪水最高的员工信息			
SELECT * from EMP e WHERE e.SAL = (SELECT MAX(e.SAL) FROM EMP e)

--3.查询各部门中最高薪水的员工编号，姓名…
 SELECT  a.DEPTNO,a.ENAME from EMP a WHERE a.SAL in    
 (SELECT  MAX(e.SAL)  FROM EMP e GROUP BY e.DEPTNO)


--4.查询各部门最高薪水的员工信息		
SELECT * FROM EMP a WHERE a.SAL IN
  (SELECT  MAX(a.SAL) from EMP a GROUP BY a.DEPTNO)

--5.查询薪水大于该部门平均薪水的员工信息		
SELECT * from EMP a WHERE a.SAL > all
(SELECT avg(a.SAL) FROM EMP a GROUP BY a.DEPTNO)

--6.查询部门名称是‘SALES’的员工信息 
SELECT *
FROM DEPT d INNER JOIN EMP e ON d.DEPTNO = e.DEPTNO
AND d.DNAME='SALES'

--7.查询领导者是‘BLAKE’的员工信息 
SELECT * FROM EMP a WHERE a.MGR =
(SELECT a.EMPNO FROM EMP a WHERE a.ENAME='BLAKE')

--8.查询和SMITH工作相同的员工信息 

SELECT * from EMP WHERE JOB = 
	(select e.JOB FROM EMP e WHERE e.ENAME = 'SMITH')

--9.查询平均工资比10部门低的部门编号 
SELECT e.DEPTNO from EMP e GROUP BY e.DEPTNO HAVING AVG(e.SAL) <
 (SELECT AVG(a.SAL) from EMP a WHERE a.DEPTNO=10)

--10.查询在NEW YORK工作的所有员工 
SELECT * FROM EMP e INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO
AND d.LOC='NEW YORK'

--11.查询10号部门的员工在整个公司中所占的比例： 


--12、查询比普通员工的最高薪水还要高的领导者姓名 


--13、找出薪水最高的五个人 
SELECT top 5 *
from EMP a
order BY a.SAL desc

--14、列出至少有三个员工的所有部门和部门信息
SELECT d.* FROM EMP e INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO
GROUP BY  d.DEPTNO,d.DNAME,d.LOC
having COUNT(e.DEPTNO)>=3

--15、查询最后入职的5名员工
SELECT TOP 10 * FROM EMP a ORDER BY a.HIREDATE desc

--16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数
SELECT e.JOB,COUNT(e.JOB) as '人数' from EMP e 
GROUP BY e.JOB
HAVING min(e.SAL)>1500

--17、列出各种工作的最低工资以及从事该工作的雇员姓名



--18、求薪水最低的部门经理所在部门的名称

 
