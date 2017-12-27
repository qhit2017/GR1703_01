--1.查询各部门的最高薪水、最低薪水、平均薪水…. 
select deptno,max(sal)as '最高薪水',min(sal)as'最低薪水',AVG(sal)'平均薪水'
from emp
group by deptno

--2.查询‘SMITH’的领导姓名 
select *
from emp
where ename='smith'

--3.查询公司所有员工的个数 
select COUNT(*) as'员工个数'
from emp

--4.查询公司中最高薪水是多少 
select MAX(sal)as'最高薪水'
from emp


--5.查询公司中平均奖金是多少 
select AVG(comm) as'平均奖金'
from emp


--6.查询公司中最晚入职的时间 
select MAX(hiredate) 
from emp


--7.查询公司中有奖金的人数 
select COUNT(*) 
from emp
where comm is not null


--8.查询20部门的最高薪水是多少 
select MAX(sal)
 from emp
where deptno='20'


--9.查询所有员工姓名中包含‘A’的最高薪水
select MAX(sal)
from emp 
where ename LIKE'%A%'

--10.查询各岗位的最高薪水，最低薪水。要求只统计薪水>1000的 
select MAX(sal),MIN(sal)
from emp
where sal>1000



--11.查询各部门的平均薪水及部门编号，要求只列出平均薪水>2000 
select AVG(sal)
from emp
group by deptno
having avg(sal)>2000

--12.查询各部门的平均薪水及部门编号，要求只有员工姓名中包含 
‘A’才参与统计，只列出平均薪水>1500的，按照平均薪水降序排列 
select deptno, AVG(sal)
from emp
where ename like '%A%'
group by deptno
having AVG(sal)>1500
order by AVG(sal) desc

--13.查询员工表中工资大于1600的员工的姓名和工资 
select ename,sal
from emp
where sal >1600


--14.查询员工表中员工号是17的员工的姓名和部门编号 
select ename ,deptno
from emp
where empno='17'

--15.选择员工表中工资不在4000到5000内的员工的姓名和工资 
select ename,sal
from emp
where sal not between 4000 and 5000

--16.选择员工表中在20和30部门工作的员工的姓名和部门号 
select ename, deptno
from emp
where deptno between 20and 30

--17.选择员工表中没有管理者的员工姓名及职位，按职位排序 
SELECT ENAME,JOB,EMPNO
FROM EMP
WHERE JOB NOT IN (SELECT JOB FROM EMP WHERE MGR IN (SELECT MGR FROM EMP WHERE EMPNO IN (SELECT MGR FROM EMP)))
ORDER BY JOB

--18.选择员工表中有奖金的员工姓名，工资和奖金，按工资倒序排列 
SELECT ENAME,SAL,COMM
FROM EMP
WHERE COMM IS NOT NULL
ORDER BY SAL DESC

--19.选择员工表中员工姓名的第三个字母是A的员工姓名 
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '__A%'

20.列出部门表中的部门名称和所在城市 
SELECT LOC
FROM DEPT


--21.显示员工表中的不重复的岗位job 
SELECT DISTINCT JOB
FROM EMP


--22.连接员工表中的员工姓名、职位、薪水，列之间用逗号连接，列头显示成简介 
SELECT '姓名'+ ENAME+',职位'+JOB+',薪水'+cast(SAL AS nvarchar) as '简介' 
FROM EMP


--23.查询员工表中员工号，姓名，工资，以及工资提高百分之20之后的结果 
SELECT EMPNO,ENAME,SAL,SAL*1.2
FROM EMP


--24.查询员工的姓名和工资数，条件限定为工资数必须大于1200，并且查询结果按入职时间进行排序。早入职的员工排在前面 
SELECT ENAME,SAL
FROM EMP
WHERE SAL>1200
ORDER BY HIREDATE
--25.列出除了ACCOUNTING部门之外还有什么部门 
SELECT DNAME 
FROM DEPT 
WHERE DNAME NOT LIKE'ACCOUNTING'
--26.把雇员按部门分组，求最高薪水，部门号 要求过滤掉名字中第二个字母是’A’的员工， 并且部门的平均薪水 > 3000,按照部门编号倒序排列 

SELECT MAX(SAL),DEPTNO
FROM EMP
WHERE ENAME NOT LIKE '_A%'
GROUP BY DEPTNO
HAVING AVG(SAL)>1000
ORDER BY DEPTNO DESC
