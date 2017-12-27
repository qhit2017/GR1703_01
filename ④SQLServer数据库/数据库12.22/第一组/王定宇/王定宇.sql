
--1.查询各部门的最高薪水、最低薪水、平均薪水…. 
select a.deptno, MAX(a.sal) as '最高薪水',MIN(a.sal) as '最低薪水',AVG(a.sal) as '平均薪水' 
from emp a
group by a.deptno

--2.查询‘SMITH’的领导姓名 
select top 1 a.ename
from emp a
where a.deptno ='20'
order by a.mgr desc

select * from emp
--3.查询公司所有员工的个数 
select COUNT(a.empno) as '员工个数'
from emp a

--4.查询公司中最高薪水是多少 
select MAX(a.sal) as '最高薪水'
from emp a

--5.查询公司中平均奖金是多少 
select  AVG(a.comm) as '平均奖金' 
from emp a

--6.查询公司中最晚入职的时间 
select MIN(a.hiredate) as '入职时间'
from emp a

--7.查询公司中有奖金的人数 
select  COUNT(a.comm) '有奖金人数'
from emp a
where a.comm  is not null and a.comm not in  ('0')

--8.查询20部门的最高薪水是多少 
select MAX(a.sal) as '最高薪水'
from emp a
where a.deptno = '20'

--9.查询所有员工姓名中包含‘A’的最高薪水 
select  MAX(a.sal) as '最高薪水'
from emp a
where a.ename like '%A%'

--10.查询各岗位的最高薪水，最低薪水。要求只统计薪水>1000的 
select a.job,MAX(a.sal) as '最高薪水',MIN(a.sal) as '最低薪水'
from emp a
where a.sal > 1000
group by a.job

--11.查询各部门的平均薪水及部门编号，要求只列出平均薪水>2000 
select a.job, AVG(a.sal) as '平均薪水',a.deptno 
from emp a
where a.sal > 2000
group by a.job,a.deptno


--12.查询各部门的平均薪水及部门编号，要求只有员工姓名中包含 
--   ‘A’才参与统计，只列出平均薪水>1500的，按照平均薪水降序排列 
select a.job, AVG(a.sal) as '平均薪水',a.deptno 
from emp a
where a.ename like '%A%'
group by a.job,a.deptno
having  (select AVG(a.sal) from emp a) > 1500
order by AVG(a.sal) desc

--13.查询员工表中工资大于1600的员工的姓名和工资 
select a.ename,a.sal
from emp a
where a.sal > 1600

--14.查询员工表中员工号是17的员工的姓名和部门编号 
select a.ename,a.deptno
from emp a
where a.empno = 17

--15.选择员工表中工资不在4000到5000内的员工的姓名和工资 
select a.ename,a.sal
from emp a
where a.sal not between 4000 and 5000

--16.选择员工表中在20和30部门工作的员工的姓名和部门号 
select a.ename,a.deptno
from emp a
where a.deptno =20 or a.deptno =30

--17.选择员工表中没有管理者的员工姓名及职位，按职位排序     
select top 1 a.ename,a.job
from emp a
order by a.mgr DESC


--18.选择员工表中有奖金的员工姓名，工资和奖金，按工资倒序排列 
select a.ename,a.sal,a.comm
from emp a
where a.comm is not null
order by a.sal desc

--19.选择员工表中员工姓名的第三个字母是A的员工姓名 
select a.ename
from emp a
where a.ename like '__A%'

--20.列出部门表中的部门名称和所在城市 
select a.dname,a.loc
from dept a

--21.显示员工表中的不重复的岗位job 
select distinct a.job
from emp a

--22.连接员工表中的员工姓名、职位、薪水，列之间用逗号连接，列头显示成简介		XX



--23.查询员工表中员工号，姓名，工资，以及工资提高百分之20之后的结果           XX
select a.empno,a.ename,a.sal
case


--24.查询员工的姓名和工资数，条件限定为工资数必须大于1200，
--	并且查询结果按入职时间进行排序。早入职的员工排在前面 
select a.ename,a.sal
from emp a
where a.sal>1200
order by a.hiredate asc

--25.列出除了ACCOUNTING部门之外还有什么部门 
select a.dname
from dept a
where a.dname not in ('ACCOUNTING') 

--26.把雇员按部门分组，求最高薪水，部门号 要求过滤掉名字中第二个字母是’A’的员工，
--	 并且部门的平均薪水 > 3000,按照部门编号倒序排列 
select  MAX(a.sal) as '最高薪水',a.deptno
from emp a
where a.ename not like  '_A%' 
group by a.deptno
having (select AVG(a.sal) from emp a) >3000
order by a.deptno desc


select  a.deptno, avg(a.sal) 
from emp a
group by a.deptno

