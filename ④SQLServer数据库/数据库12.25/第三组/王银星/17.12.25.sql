--1.查询部门名称是‘SALES’的员工信息 
SELECT *
FROM EMP a
where a.JOB LIKE '%SALES%'
--2.查询公司中薪水最高的员工信息 
SELECT *
FROM EMP a
WHERE a.SAL =(SELECT MAX(b.SAL)  FROM EMP b) 
--3.查询各部门中最高薪水的员工编号，姓名…
SELECT *
FROM EMP a
WHERE a.SAL IN (SELECT MAX(b.SAL)  FROM EMP b GROUP BY b.JOB)
--4.查询各部门最高薪水的员工信息 
SELECT *
FROM EMP a
WHERE a.SAL IN (SELECT MAX(b.SAL)  FROM EMP b GROUP BY b.JOB)
--5.查询薪水大于该部门平均薪水的员工信息 
--7.查询领导者是‘BLAKE’的员工信息 
SELECT *
FROM EMP a
where a.ENAME ='BLAKE'
--8.查询和SMITH工作相同的员工信息 
SELECT *
FROM EMP a
where a.JOB  LIKE(SELECT b.JOB FROM EMP b WHERE b.ENAME ='SMITH')
--9.查询平均工资比10部门低的部门编号 
SELECT  AVG(a.SAL)
FROM EMP a
GROUP BY a.JOB
HAVING AVG(a.SAL)<(SELECT AVG(b.SAL)  FROM EMP b WHERE b.DEPTNO =10)
--10.查询在NEW YORK工作的所有员工 
SELECT *
FROM EMP a INNER JOIN  DEPT b
ON a.DEPTNO =b.DEPTNO
WHERE b.LOC LIKE 'NEW YORK'
--11.查询10号部门的员工在整个公司中所占的比例： 
SELECT  (SELECT COUNT(*)  FROM EMP b WHERE b.DEPTNO =10)/ COUNT(*)AS '比例'
FROM EMP 
--12、查询比普通员工的最高薪水还要高的领导者姓名
SELECT s.ENAME
FROM EMP s
WHERE s.SAL =(SELECT v.SAL FROM EMP v where v.MGR IN (SELECT b.EMPNO FROM EMP b WHERE b.MGR IS  NULL) )
>(SELECT MAX(a.SAL) FROM EMP a where a.MGR IN (SELECT b.EMPNO FROM EMP b WHERE b.MGR IS NOT NULL) )
--13、找出薪水最高的五个人
SELECT TOP 5 *
FROM EMP a
ORDER BY a.SAL DESC 
--14、列出至少有三个员工的所有部门和部门信息
SELECT *
FROM EMP a
WHERE(SELECT COUNT(b.ENAME)FROM EMP b GROUP BY b.JOB)>=3

--15、查询最后入职的5名员工
SELECT TOP 5 *
FROM EMP a
ORDER BY a.HIREDATE DESC
--16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数

--17、列出各种工作的最低工资以及从事该工作的雇员姓名

--18、求薪水最低的部门经理所在部门的名称
SELECT v.DEPTNO
FROM EMP b INNER JOIN DEPT v ON b.DEPTNO =v.DEPTNO
WHERE b.SAL =(SELECT MIN(a.SAL)  FROM EMP a WHERE a.JOB LIKE 'MANAGER')
