SELECT *
FROM EMP 

SELECT *
FROM DEPT

--1.查询各部门的最高薪水、最低薪水、平均薪水…. 
SELECT  a.JOB AS'部门' , MAX(a.SAL)AS '最高薪水',MIN(a.SAL)AS '最低薪水',AVG(a.SAL)AS '平均薪水'   
FROM EMP a
group BY a.JOB 
--2.查询‘SMITH’的领导姓名 
SELECT a.ENAME
FROM EMP a
where a.ENAME LIKE 'SMITH'
--3.查询公司所有员工的个数 
SELECT COUNT(*)AS '人数' 
FROM EMP a
--4.查询公司中最高薪水是多少 
SELECT  MAX(a.SAL)AS '最高薪水'
FROM EMP a
--5.查询公司中平均奖金是多少 
SELECT  AVG(a.SAL)AS '平均奖金'
FROM EMP a
--6.查询公司中最晚入职的时间 
SELECT MAX(a.HIREDATE) 
FROM EMP a
--7.查询公司中有奖金的人数 
SELECT COUNT(a.COMM) AS '人数'
FROM EMP a
where a.COMM>0 
--8.查询20部门的最高薪水是多少 
SELECT MAX(a.SAL)
FROM EMP a
WHERE a.DEPTNO='20' 
--9.查询所有员工姓名中包含‘A’的最高薪水 
SELECT  MAX(a.SAL) 
FROM EMP a
WHERE a.ENAME LIKE '%A%'
--10.查询各岗位的最高薪水，最低薪水。要求只统计薪水>1000的 
SELECT a.JOB AS'岗位', MAX(a.SAL )AS'最高薪水',MIN(a.SAL)AS'最低薪水'  
FROM EMP a
GROUP BY a.JOB 
HAVING AVG(a.SAL)>1000
--11.查询各部门的平均薪水及部门编号，要求只列出平均薪水>2000 
SELECT a.JOB AS'岗位',AVG(a.SAL)AS'平均薪水',a.DEPTNO AS'部门编号'
FROM EMP a
GROUP BY a.JOB ,a.DEPTNO
HAVING AVG(a.SAL)>2000
--12.查询各部门的平均薪水及部门编号，要求只有员工姓名中包含 
--‘A’才参与统计，只列出平均薪水>1500的，按照平均薪水降序排列 
SELECT a.JOB AS '部门' ,AVG(a.SAL)AS '平均薪水',a.DEPTNO AS '部门编号' ,a.ENAME AS '姓名' 
FROM EMP a
where a.ENAME LIKE '%A%'
GROUP BY a.JOB,a.DEPTNO,a.ENAME
HAVING AVG(a.SAL)>1500
ORDER BY AVG(a.SAL)DESC 
--13.查询员工表中工资大于1600的员工的姓名和工资 
SELECT a.ENAME ,a.SAL
FROM EMP a
WHERE a.SAL >1600
--14.查询员工表中员工号是17的员工的姓名和部门编号 
SELECT a.ENAME ,a.DEPTNO
FROM EMP a
WHERE a.EMPNO =17
--15.选择员工表中工资不在4000到5000内的员工的姓名和工资 
SELECT a.ENAME ,a.SAL
FROM EMP a
WHERE a.SAL NOT BETWEEN 4000 AND 5000
--16.选择员工表中在20和30部门工作的员工的姓名和部门号 
SELECT a.ENAME ,a.DEPTNO
FROM EMP a
WHERE a.DEPTNO=20 OR a.DEPTNO =30
--17.选择员工表中没有管理者的员工姓名及职位，按职位排序 
SELECT a.ENAME ,a.JOB
FROM EMP a
where a.MGR IS NULL
ORDER BY a.JOB
--18.选择员工表中有奖金的员工姓名，工资和奖金，按工资倒序排列 
SELECT a.ENAME ,a.SAL ,a.COMM
FROM EMP a
where a.COMM>=0
ORDER BY a.SAL DESC
--19.选择员工表中员工姓名的第三个字母是A的员工姓名 
SELECT a.ENAME
FROM EMP a
WHERE a.ENAME LIKE '__A%'
--20.列出部门表中的部门名称和所在城市 
SELECT  a.DNAME ,a.LOC,b.ENAME,a.DEPTNO 
FROM DEPT a,EMP b
where a.DEPTNO =b.DEPTNO

SELECT a.DNAME ,a.LOC
FROM DEPT a
--21.显示员工表中的不重复的岗位job 
SELECT DISTINCT a.JOB
FROM EMP a
GROUP BY a.JOB
--22.连接员工表中的员工姓名、职位、薪水，列之间用逗号连接，列头显示成简介 
SELECT a.ENAME,a.JOB ,a.SAL,
'姓名是:'+a.ENAME +',职位是：'+a.JOB +',薪水是：'+CAST(a.SAL AS nvarchar )  AS '简介'
FROM EMP a
--23.查询员工表中员工号，姓名，工资，以及工资提高百分之20之后的结果 
SELECT a.EMPNO ,a.ENAME ,a.SAL,a.SAL *1.2 AS '工资提高百分之20'
FROM EMP a
--24.查询员工的姓名和工资数，条件限定为工资数必须大于1200，并且查询结果按入职时间进行排序。早入职的员工排在前面 
SELECT a.ENAME ,a.SAL
FROM EMP a
WHERE a.SAL >1200
ORDER BY a.HIREDATE ASC
--25.列出除了ACCOUNTING部门之外还有什么部门 
SELECT DISTINCT  a.JOB
FROM EMP a
WHERE a.JOB NOT LIKE 'ACCOUNTING'
--26.把雇员按部门分组，求最高薪水，部门号 要求过滤掉名字中第二个字母是’A’的员工，
-- 并且部门的平均薪水 > 3000,按照部门编号倒序排列 
HAVING AVG(a.SAL)>3000 
ORDER BY a.DEPTNO DESC