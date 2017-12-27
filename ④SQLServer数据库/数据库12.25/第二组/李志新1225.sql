--1.查询部门名称是‘SALES’的员工信息 
select *
from EMP a

select *
from DEPT a

select *
from EMP a inner join DEPT b on a.DEPTNO=b.DEPTNO
where b.DNAME='SALES'



--2.查询公司中薪水最高的员工信息 
select *
from EMP 
where SAL =(select MAX (a.SAL)from EMP a)


--3.查询各部门中最高薪水的员工编号，姓名… 
select ENAME ,EMPNO 
from EMP 
where SAL in(select MAX(a.SAL) from EMP a group by a.DEPTNO)



--4.查询各部门最高薪水的员工信息 
select *
from EMP 
where SAL in(select MAX(a.SAL) from EMP a group by a.DEPTNO)


--5.查询薪水大于该部门平均薪水的员工信息 
select *
from EMP 
where SAL  < IN(select avg(a.SAL) from EMP a group by a.DEPTNO)


--6.查询部门名称是‘SALES’的员工信息 
select *
from EMP a inner join DEPT b on a.DEPTNO=b.DEPTNO
where b.DNAME='SALES'


--7.查询领导者是‘BLAKE’的员工信息 
select *
from EMP 
where MGR =(select a.EMPNO  from EMP a where a.ENAME='BLAKE' )

--8.查询和SMITH工作相同的员工信息 
select *
from EMP 
where JOB =(select a.JOB from EMP a where a.ENAME='SMITH');

--9.查询平均工资比10部门低的部门编号 
select  b.DEPTNO 
from EMP b
group by b.DEPTNO
having avg(b.SAL )<(select  avg (a.SAL) from EMP a where a.DEPTNO='10'  );



--10.查询在NEW YORK工作的所有员工 
select a.*
from EMP a inner join dept  b on a.DEPTNO=b.DEPTNO
where LOC ='NEW YORK'


--11.查询10号部门的员工在整个公司中所占的比例： 

--12、查询比普通员工的最高薪水还要高的领导者姓名 

--13、找出薪水最高的五个人 
select top 5 ENAME , SAL 
from EMP 
order by SAL  desc
--14、列出至少有三个员工的所有部门和部门信息
select distinct a.DEPTNO,b.DNAME,b.LOC
from EMP a inner join DEPT b on a.DEPTNO=b.DEPTNO
where a.DEPTNO in(select d.DEPTNO from EMP d group by d.DEPTNO having COUNT(*)>=3) 

--15、查询最后入职的5名员工
select top 5 ENAME 
from EMP 
order by hiredate desc
--16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数
select job,COUNT (*)
from EMP 
group by JOB 
having MIN(SAL )>1500





--17、列出各种工作的最低工资以及从事该工作的雇员姓名
select ENAME,SAL 
from EMP 
where SAL  in(select MIN (SAL )  from EMP a group by a.JOB )

 
--18、求薪水最低的部门经理所在部门的名称


select  c.DNAME
from EMP b inner join  DEPT  c on b.DEPTNO=c.DEPTNO
where SAL  in (select MIN (a.SAL ) from EMP a where JOB ='MANAGER')





