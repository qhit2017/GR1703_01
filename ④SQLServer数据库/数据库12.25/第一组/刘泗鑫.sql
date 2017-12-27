SELECT * FROM EMP

SELECT * FROM DEPT

--1.查询部门名称是‘SALES’的员工信息
SELECT e.*,d.DNAME
FROM EMP e INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO
AND d.DNAME='SALES'
 
--2.查询公司中薪水最高的员工信息 
SELECT a.*
FROM EMP a
WHERE a.SAL=(SELECT MAX(e.SAL) FROM EMP e)

--3.查询各部门中最高薪水的员工编号，姓名…
SELECT a.EMPNO,a.ENAME
FROM EMP a
WHERE a.SAL IN (SELECT MAX(b.SAL) FROM EMP b GROUP BY b.DEPTNO)

--4.查询各部门最高薪水的员工信息
SELECT *
FROM EMP a
WHERE a.SAL IN (SELECT MAX(b.SAL) FROM EMP b GROUP BY b.DEPTNO)

--5.查询薪水大于该部门平均薪水的员工信息 
SELECT *
FROM EMP a
WHERE a.SAL > ALL (SELECT AVG(b.SAL) FROM EMP b GROUP BY b.DEPTNO)

--7.查询领导者是‘BLAKE’的员工信息 
SELECT *
FROM EMP a
WHERE a.MGR = (SELECT b.EMPNO from EMP b WHERE b.ENAME = 'BLAKE')

--8.查询和SMITH工作相同的员工信息
SELECT *
FROM EMP a
WHERE a.JOB = (SELECT b.JOB from EMP b WHERE b.ENAME = 'SMITH') 

--9.查询平均工资比10部门低的部门编号 
SELECT a.DEPTNO
FROM EMP a
GROUP BY a.DEPTNO
HAVING AVG(a.SAL) < (SELECT AVG(b.SAL) from EMP b WHERE b.DEPTNO = 10)

--10.查询在NEW YORK工作的所有员工
SELECT *
FROM EMP a INNER JOIN DEPT d ON a.DEPTNO = d.DEPTNO
WHERE d.LOC = 'NEW YORK'

--11.查询10号部门的员工在整个公司中所占的比例：
SELECT CAST(COUNT(*) AS nvarchar) +'/' + CAST((SELECT COUNT(*) FROM EMP c) AS nvarchar) AS '比例'
FROM EMP a 
WHERE a.DEPTNO = 10

--12、查询比普通员工的最高薪水还要高的领导者姓名 
SELECT a.ENAME
FROM EMP a
WHERE a.SAL > (SELECT MAX(b.SAL) from EMP b WHERE b.JOB IN ('SALESMAN','CLERK'))

--13、找出薪水最高的五个人
SELECT TOP 5 *
FROM EMP a
ORDER BY a.SAL DESC

--14、列出至少有三个员工的所有部门和部门信息
SELECT d.* 
FROM EMP a INNER JOIN DEPT d ON a.DEPTNO = d.DEPTNO
GROUP BY a.DEPTNO,d.DEPTNO,d.DNAME,d.LOC
HAVING COUNT(a.EMPNO)>=3

--15、查询最后入职的5名员工
SELECT TOP 5 *
FROM EMP a
ORDER BY a.HIREDATE DESC

--16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数
SELECT a.JOB,COUNT(a.ENAME) AS '人员数'
FROM EMP a
GROUP BY a.JOB
HAVING MIN(a.SAL)>1500

--17、列出各种工作的最低工资以及从事该工作的雇员姓名
SELECT a.ENAME,MIN(a.SAL) AS '最低工资'
FROM EMP a
GROUP BY a.JOB,a.ENAME

--18、求薪水最低的部门经理所在部门的名称
SELECT d.DNAME
FROM EMP a INNER JOIN DEPT d ON a.DEPTNO = d.DEPTNO
WHERE a.SAL = (SELECT MIN(b.SAL) FROM EMP b WHERE b.JOB = 'MANAGER')
