SELECT * FROM EMP a

--1.查询部门名称是‘SALES’的员工信息

SELECT *

from EMP a ,DEPT d

--2.查询公司中薪水最高的员工信息 

SELECT  MAX(e.SAL)  

from EMP e 

--3.查询各部门中最高薪水的员工编号，姓名… 

SELECT e.EMPNO,e.ENAME

from EMP e, DEPT d

--4.查询各部门最高薪水的员工信息

 select MAX(COUNT(*) )
  
 from emp a , dept d
 
--5.查询薪水大于该部门平均薪水的员工信息

SELECT COUNT(*)

from EMP s 

WHERE (s.SAL)>AVG(s.SAL) 

--6.查询部门名称是‘SALES’的员工信息 

--7.查询领导者是‘BLAKE’的员工信息 

SELECT *

from EMP n where n.EMPNO=(SELECT n.MGR from EMP n WHERE n.ENAME='BLAKE')

--8.查询和SMITH工作相同的员工信息 

SELECT COUNT(*)

from EMP d WHERE d.DEPTNO IN (SELECT d.DEPTNO from emp a where a.ENAME)IN ('SMITH')


--9.查询平均工资比10部门低的部门编号 

--10.查询在NEW YORK工作的所有员工 

SELECT *

from EMP a

where a.JOB='NEW YORK'

--11.查询10号部门的员工在整个公司中所占的比例： 

--12、查询比普通员工的最高薪水还要高的领导者姓名 

select a.ENAME

from emp a where sal > all

--13、找出薪水最高的五个人

SELECT max (a.SAL)

from EMP a

WHERE max (a.SAL)=5

--14、列出至少有三个员工的所有部门和部门信息

--15、查询最后入职的5名员工

SELECT TOP 5

from EMP a 
