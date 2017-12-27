SELECT * FROM EMP
SELECT * FROM DEPT


--1.查询部门名称是‘SALES’的员工信息
 SELECT *
 from DEPT a INNER JOIN EMP b 
 ON a.DEPTNO=b.DEPTNO
 WHERE a.DNAME='SALES'

--2.查询公司中薪水最高的员工信息 
SELECT *
from EMP
WHERE SAL=(SELECT MAX(SAL)FROM EMP)

--3.查询各部门中最高薪水的员工编号，姓名… 
SELECT EMPNO,ENAME
from EMP
WHERE SAL IN (SELECT MAX(SAL)FROM EMP GROUP BY DEPTNO)
--4.查询各部门最高薪水的员工信息 
SELECT *
from EMP
WHERE SAL IN (SELECT MAX(SAL)FROM EMP GROUP BY DEPTNO)

--5.查询薪水大于该部门平均薪水的员工信息
SELECT *
from EMP 
WHERE sal >all(SELECT AVG(SAL)from EMP GROUP BY DEPTNO) 

--6.查询部门名称是‘SALES’的员工信息 
 SELECT *
 from DEPT a INNER JOIN EMP b 
 ON a.DEPTNO=b.DEPTNO
 WHERE a.DNAME='SALES'

--7.查询领导者是‘BLAKE’的员工信息 
SELECT *
from EMP
WHERE MGR=(SELECT EMPNO FROM EMP WHERE ENAME='BLAKE')

--8.查询和SMITH工作相同的员工信息 
SELECT *
from EMP
WHERE JOB=(SELECT JOB from EMP WHERE ENAME='SMITH')

--9.查询平均工资比10部门低的部门编号
SELECT DISTINCT DEPTNO
from EMP
WHERE (SELECT AVG(SAL)from EMP WHERE DEPTNO=10)>Any(select AVG(sal) from EMP GROUP BY DEPTNO)

--10.查询在NEW YORK工作的所有员工 
SELECT e.ENAME
from EMP e INNER JOIN DEPT d 
ON e.DEPTNO=e.DEPTNO
WHERE d.LOC='NEW YORK'

--11.查询10号部门的员工在整个公司中所占的比例：
SELECT CAST((SELECT count(*) from emp WHERE deptno=10) AS nvarchar)+'/'+CAST(COUNT(*) AS nvarchar)as '比例'
from EMP 


--12、查询比普通员工的最高薪水还要高的领导者姓名 
--13、找出薪水最高的五个人 
--14、列出至少有三个员工的所有部门和部门信息
--15、查询最后入职的5名员工
--16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数

--17、列出各种工作的最低工资以及从事该工作的雇员姓名

--18、求薪水最低的部门经理所在部门的名称
