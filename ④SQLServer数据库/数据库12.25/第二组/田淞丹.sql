--1.查询部门名称是‘SALES’的员工信息 
SELECT  e.* 
from EMP e INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO
AND d.DNAME='SALES'
--2.查询公司中薪水最高的员工信息 
SELECT *  from EMP a WHERE a.SAL=
(SELECT MAX(b.SAL)  from EMP b )
--3.查询各部门中最高薪水的员工编号，姓名
SELECT  b.EMPNO,b.ENAME  from EMP b  WHERE   b.SAL IN 
(SELECT MAX (a.SAL) FROM EMP a GROUP BY a.DEPTNO ) 
--4.查询各部门最高薪水的员工信息 
SELECT  *  from EMP b  WHERE   b.SAL IN 
(SELECT  max(a.SAL) FROM EMP a GROUP BY a.DEPTNO ) 
--5.查询薪水大于该部门平均薪水的员工信息 （不会）
SELECT a.DEPTNO,* FROM EMP a GROUP BY a.DEPTNO HAVING  a.SAL>
(SELECT AVG(a.SAL)  from EMP b)
--6.查询部门名称是‘SALES’的员工信息 
SELECT * FROM EMP e INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO
AND d.DNAME='SALES'
--7.查询领导者是‘BLAKE’的员工信息 
SELECT * FROM EMP a WHERE a.MGR IN 
(select b.EMPNO  from EMP b where b.ENAME='BLAKE')
--8.查询和SMITH工作相同的员工信息 
SELECT * FROM EMP b WHERE b.JOB IN 
(SELECT a.JOB from EMP a WHERE a.ENAME='SMITH')
--9.查询平均工资比10部门低的部门编号 
SELECT b.DEPTNO from EMP b GROUP BY b.DEPTNO HAVING AVG (b.SAL)<
(SELECT AVG(a.SAL)  from EMP a WHERE a.DEPTNO=10)
--10.查询在NEW YORK工作的所有员工 
SELECT e.ENAME
from EMP e  INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO
WHERE d.LOC ='NEW YORK'
--11.查询10号部门的员工在整个公司中所占的比例：
SELECT (SELECT COUNT(a.EMPNO)  from EMP a  WHERE a.DEPTNO=10)*100/ count(b.EMPNO)as '百分比%' from EMP b 
--12、查询比普通员工的最高薪水还要高的领导者姓名 （写错了）
SELECT b.ENAME from EMP b WHERE b.SAL>
(SELECT MAX(a.SAL)  from EMP a WHERE a.MGR IS NOT NULL)
--13、找出薪水最高的五个人 
SELECT TOP 5 a.ENAME
from EMP a 
ORDER BY a.SAL DESC 
--14、列出至少有三个员工的所有部门和部门信息
SELECT d.*
from EMP e INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO 
GROUP BY e.DEPTNO,d.DEPTNO,d.DNAME,d.LOC
HAVING COUNT(e.EMPNO)>=3 
--15、查询最后入职的5名员工
SELECT TOP 5 a.ENAME
from EMP a 
ORDER BY a.HIREDATE 
--16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数
SELECT b.JOB as '职业' ,COUNT(*) as '人数'  
 from EMP b 
GROUP BY b.JOB
HAVING MIN(b.SAL)>1500; 
--17、列出各种工作的最低工资以及从事该工作的雇员姓名
SELECT b.ENAME from EMP b WHERE b.SAL IN 
(SELECT  MIN(a.SAL)  from EMP a GROUP BY a.JOB )
--18、求薪水最低的部门经理所在部门的名称（写错了）
SELECT d.DNAME
from EMP e  INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO
WHERE e.SAL IN (SELECT  MIN(a.SAL)  from emp a )
 