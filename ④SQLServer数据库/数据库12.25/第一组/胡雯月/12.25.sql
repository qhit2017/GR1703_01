--1.查询部门名称是‘SALES’的员工信息 
SELECT E.*
FROM EMP E INNER JOIN DEPT D 
ON E.DEPTNO = D.DEPTNO
WHERE D.DNAME='SALES'
 
--2.查询公司中薪水最高的员工信息 
SELECT*
FROM EMP
WHERE SAL=(SELECT MAX(SAL)FROM EMP)

--3.查询各部门中最高薪水的员工编号，姓名… 
SELECT E.EMPNO,E.ENAME 
FROM EMP E 
WHERE E.SAL IN(SELECT MAX(a.SAL)FROM EMP a GROUP BY a.DEPTNO)


--4.查询各部门最高薪水的员工信息 
SELECT*
from EMP e
WHERE e.SAL in (SELECT MAX(a.SAL)FROM EMP a GROUP BY a.DEPTNO )


--5.查询薪水大于该部门平均薪水的员工信息 
SELECT *
from emp  e
WHERE e.SAL>all(SELECT AVG(s.SAL)FROM EMP s GROUP BY s.DEPTNO )



--6.查询部门名称是‘SALES’的员工信息
SELECT e.*
from EMP e INNER JOIN DEPT d on e.DEPTNO=d.DEPTNO 
WHERE d.DNAME='SALES'


--7.查询领导者是‘BLAKE’的员工信息 
SELECT*
from emp e
WHERE e.MGR=(select a.EMPNO from EMP a where a.ENAME='BLAKE')


--8.查询和SMITH工作相同的员工信息 
SELECT*
from EMP e
WHERE e.JOB=(SELECT b.JOB FROM EMP b WHERE b.ENAME='Smith')

--9.查询平均工资比10部门低的部门编号 
SELECT e.EMPNO
FROM EMP e
GROUP BY e.EMPNO
HAVING avg(e.SAL)<(SELECT AVG(s.SAL) FROM EMP s WHERE s.EMPNO=10)

--10.查询在NEW YORK工作的所有员工 
SELECT*
from EMP e INNER JOIN DEPT d ON e.DEPTNO =d.DEPTNO
WHERE d.LOC='NEW YORK'


--11.查询10号部门的员工在整个公司中所占的比例： 

--12、查询比普通员工的最高薪水还要高的领导者姓名 
--13、找出薪水最高的五个人 
SELECT TOP 5*
from  EMP e
ORDER BY e.SAL DESC


--14、列出至少有三个员工的所有部门和部门信息
--15、查询最后入职的5名员工
SELECT TOP 5*
from EMP e
order by e.HIREDATE DESC
--16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数

--17、列出各种工作的最低工资以及从事该工作的雇员姓名

--18、求薪水最低的部门经理所在部门的名称
