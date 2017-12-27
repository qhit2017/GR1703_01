SELECT * FROM EMP
SELECT * FROM DEPT

--1.查询各部门的最高薪水、最低薪水、平均薪水… 
SELECT max(SAL) as '最高薪水',MIN(SAL)as '最低薪水',AVG(SAL) as '平均薪水'
from EMP 
GROUP BY DEPTNO

--2.查询‘SMITH’的领导姓名
SELECT *
FROM EMP
WHERE ENAME='SMITH'

--3.查询公司所有员工的个数 
SELECT COUNT(*) as '员工数'
from EMP

--4.查询公司中最高薪水是多少 
SELECT MAX(SAL) as '最高薪水'
from EMP

--5.查询公司中平均奖金是多少
SELECT AVG(COMM) as '平均奖金'
from EMP 

--6.查询公司中最晚入职的时间 
SELECT Max(HIREDATE) as '最晚入职的时间'
from EMP

--7.查询公司中有奖金的人数 
SELECT COUNT(*) as '人数'
from EMP
where COMM IS NOT NULL

--8.查询20部门的最高薪水是多少 
SELECT MAX(SAL) as '20部门的最高薪水'
from EMP
WHERE DEPTNO=20

--9.查询所有员工姓名中包含‘A’的最高薪水 
SELECT MAX(SAL)
from EMP
where ENAME LIKE '%A%'

--10.查询各岗位的最高薪水，最低薪水。要求只统计薪水>1000的 
SELECT JOB, MAX(SAL) as '最高薪水',MIN(SAL) as '最低薪水'
from EMP
WHERE SAL>1000
GROUP BY JOB 

--11.查询各部门的平均薪水及部门编号，要求只列出平均薪水>2000 
SELECT DEPTNO,AVG(SAL) as '平均薪水'
from EMP
GROUP BY DEPTNO HAVING AVG(SAL)>2000


--12.查询各部门的平均薪水及部门编号，要求只有员工姓名中包含 
--‘A’才参与统计，只列出平均薪水>1500的，按照平均薪水降序排列 
SELECT DEPTNO,AVG(SAL) as '平均薪水'
from EMP
WHERE ENAME LIKE '%A%'
GROUP BY DEPTNO HAVING AVG(SAL)>1500
ORDER BY AVG(SAL) DESC

--13.查询员工表中工资大于1600的员工的姓名和工资 
SELECT ENAME,SAL
from EMP
WHERE SAL>1600

--14.查询员工表中员工号是17的员工的姓名和部门编号 
SELECT ENAME,DEPTNO
from EMP
WHERE EMPNO=17

--15.选择员工表中工资不在4000到5000内的员工的姓名和工资 
SELECT ENAME,SAL
from EMP
WHERE SAL NOT BETWEEN 4000 AND 5000

--17.选择员工表中没有管理者的员工姓名及职位，按职位排序 
SELECT ENAME,JOB
from EMP
WHERE mgr IS NULL
ORDER by JOB

--18.选择员工表中有奖金的员工姓名，工资和奖金，按工资倒序排列 
SELECT ENAME,SAL,COMM
from EMP
WHERE COMM >0
ORDER BY SAL DESC

--19.选择员工表中员工姓名的第三个字母是A的员工姓名 
SELECT ENAME
from EMP
WHERE ENAME LIKE '__A%'

--20.列出部门表中的部门名称和所在城市 
SELECT DEPTNO,LOC
from DEPT
GROUP BY DEPTNO,LOC

--21.显示员工表中的不重复的岗位job
SELECT JOB,COUNT(*)
from EMP
GROUP BY JOB
HAVING COUNT(*)=1

--22.连接员工表中的员工姓名、职位、薪水，列之间用逗号连接，列头显示成简介 
SELECT ENAME+','+JOB+','+cast ( SAL Avarchar) as '简介'S n
from EMP

--23.查询员工表中员工号，姓名，工资，以及工资提高百分之20之后的结果
SELECT EMPNO,ENAME,CAST(SAL AS double precision)*1.2
from EMP 

--24.查询员工的姓名和工资数，条件限定为工资数必须大于1200，并且查询结果按入职时间进行排序。早入职的员工排在前面 
SELECT ENAME,SAL
from EMP
where SAL>1200
ORDER BY HIREDATE

--25.列出除了ACCOUNTING部门之外还有什么部门 
SELECT DNAME
from DEPT
where DNAME NOT in ('ACCOUNTING')

--26.把雇员按部门分组，求最高薪水，部门号 要求过滤掉名字中第二个字母是’A’的员工， 并且部门的平均薪水 > 3000,按照部门编号倒序排列 
SELECT MAX(SAL),DEPTNO
from EMP
WHERE ENAME NOT LIKE '_A%'
GROUP BY DEPTNO HAVING AVG(SAL)>3000
ORDER BY DEPTNO DESC


