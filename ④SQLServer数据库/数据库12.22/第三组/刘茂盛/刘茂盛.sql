SELECT *
FROM EMP
SELECT *
FROM DEPT

--1.查询各部门的最高薪水、最低薪水、平均薪水…. 
SELECT a.DEPTNO, max(a.SAL) as'最高薪水',min(a.SAL)as'最低薪水',AVG(a.SAL)as'平均薪水'
from EMP a
GROUP BY a.DEPTNO


--2.查询‘SMITH’的领导姓名 
SELECT b.ENAME
from EMP b
WHERE b.EMPNO=(SELECT c.MGR FROM EMP c WHERE c.ENAME ='SMITH' )

--3.查询公司所有员工的个数 
SELECT COUNT(c.EMPNO) 
from EMP c


--4.查询公司中最高薪水是多少 
SELECT MAX(d.SAL)
from EMP d


--5.查询公司中平均奖金是多少 
SELECT AVG(e.COMM) 
from EMP e
where e.COMM IS NOT NULL

--6.查询公司中最晚入职的时间 
SELECT MAX(f.HIREDATE) 
from EMP f


--7.查询公司中有奖金的人数 
SELECT COUNT(g.EMPNO) 
from EMP g
WHERE g.COMM IS NOT NULL

--8.查询20部门的最高薪水是多少 
SELECT MAX(h.SAL) 
from EMP h
WHERE h.DEPTNO=20

--9.查询所有员工姓名中包含‘A’的最高薪水 
SELECT max(i.SAL)
from EMP i
WHERE i.ENAME LIKE '%A%'


--10.查询各岗位的最高薪水，最低薪水。要求只统计薪水>1000的 
SELECT j.job as'岗位',MAX(j.sal) as'最高薪水',MIN(j.SAL)as'最低薪水'
from EMP j
WHERE j.SAL>1000
GROUP BY j.JOB

--11.查询各部门的平均薪水及部门编号，要求只列出平均薪水>2000 
SELECT k.DEPTNO as'部门',AVG(k.SAL) as'平均薪水'
from EMP k
GROUP BY k.DEPTNO
HAVING AVG(k.SAL)>2000

--12.查询各部门的平均薪水及部门编号，要求只有员工姓名中包含 
--‘A’才参与统计，只列出平均薪水>1500的，按照平均薪水降序排列 
SELECT k.DEPTNO as'部门',AVG(k.SAL) as'平均薪水'
from EMP k
WHERE k.ENAME LIKE '%A%'
GROUP BY k.DEPTNO
HAVING AVG(k.SAL)>1500
ORDER BY AVG(k.SAL) DESC


--13.查询员工表中工资大于1600的员工的姓名和工资 
SELECT l.ENAME as'名字',l.SAL as'工资'
from EMP l
WHERE l.SAL>1600

--14.查询员工表中员工号是17的员工的姓名和部门编号 
SELECT m.ENAME as'名字',m.DEPTNO as'部门'
from EMP m
where m.EMPNO=17

--15.选择员工表中工资不在4000到5000内的员工的姓名和工资 
SELECT n.ENAME as'姓名',n.SAL as'工资'
from EMP n
where n.SAL NOT BETWEEN 4000 AND 5000 

--16.选择员工表中在20和30部门工作的员工的姓名和部门号 
SELECT o.ENAME,o.DEPTNO 
from EMP o
WHERE o.DEPTNO IN (20,30)

--17.选择员工表中没有管理者的员工姓名及职位，按职位排序
SELECT p.ENAME,p.JOB
from EMP p
where p.MGR is NULL  
GROUP BY p.JOB,p.ENAME
ORDER BY p.JOB


--18.选择员工表中有奖金的员工姓名，工资和奖金，按工资倒序排列 
SELECT r.ENAME,r.SAL,r.COMM
from EMP r
WHERE r.COMM IS NOT NULL
ORDER BY r.SAL DESC



--19.选择员工表中员工姓名的第三个字母是A的员工姓名 
SELECT q.ENAME
from EMP q
where q.ENAME LIKE '__A%'


--20.列出部门表中的部门名称和所在城市 
SELECT a.DNAME as'部门名称',a.LOC as'所在城市'
from DEPT a


--21.显示员工表中的不重复的岗位job 
SELECT  a.JOB as'岗位'
from EMP a
group by a.job
having count(a.job)=1



--22.连接员工表中的员工姓名、职位、薪水，列之间用逗号连接，列头显示成简介 
SELECT b.ENAME+','+b.JOB+','+CASt(b.sal as nvarchar) as'简介'
from EMP b


--23.查询员工表中员工号，姓名，工资，以及工资提高百分之20之后的结果 
SELECT c.EMPNO,c.ENAME,c.SAL,c.EMPNO,c.ENAME,CAST(c.SAL AS float)*1.2 as'提高百分之二十的工资'
from EMP c



--24.查询员工的姓名和工资数，条件限定为工资数必须大于1200，并且查询结果按入职时间进行排序。早入职的员工排在前面 
SELECT d.ENAME,d.SAL
from EMP d
WHERE d.SAL>1200
ORDER BY d.HIREDATE

--25.列出除了ACCOUNTING部门之外还有什么部门 
SELECT DISTINCT a.DNAME
from DEPT a
where a.DNAME !='ACCOUNTING'

--26.把雇员按部门分组，求最高薪水，部门号 要求过滤掉名字中第二个字母是’A’的员工， 并且部门的平均薪水 > 3000,按照部门编号倒序排列




SELECT MAX(a.SAL) as'最高薪水',a.DEPTNO
from EMP a
where a.ENAME  NOT LIKE '_A%' 
GROUP BY a.DEPTNO
HAVING avg(a.SAL)>3000
ORDER BY a.DEPTNO DESC




SELECT * FROM EMP

