SELECT *FROM EMP
SELECT *FROM DEPT 



----1.查询部门名称是‘SALES’的员工信息 

SELECT *
FROM DEPT A
where A.DNAME ='SALES'


--2.查询公司中薪水最高的员工信息 
SELECT *FROM EMP WHERE SAL=(SELECT MAX(SAL) FROM EMP )





--3.查询各部门中最高薪水的员工编号，姓名… 
SELECT a.EMPNO,a.ENAME 
from EMP a
where a.SAL IN(SELECT MAX(a.SAL )
			   from EMP a
			   GROUP BY a.DEPTNO 
				
				
				)



--4.查询各部门最高薪水的员工信息 
select *
from emp a
where a.SAL IN (SELECT MAX(a.SAL ) from EMP a GROUP BY a.DEPTNO  )



--5.查询薪水大于该部门平均薪水的员工信息 
select *
FROM EMP a
where a.SAL > (SELECT AVG(a.SAL ) from EMP a group BY a.DEPTNO  )





--6.查询部门名称是‘SALES’的员工信息 
SELECT *
FROM DEPT  a
where a.DNAME ='SALES'



--7.查询领导者是‘BLAKE’的员工信息 
select *
FROM EMP  a 
WHERE a.MGR   IN  (SELECT  z.MGR  from  EMP z WHERE z.ENAME='BLAKE')




--8.查询和SMITH工作相同的员工信息 
select * FROM EMP a WHERE a.JOB IN (SELECT z.JOB from EMP z WHERE z.ENAME='SMITH')



--9.查询平均工资比10部门低的部门编号 
SELECT a.DEPTNO 
from EMP a 
GROUP BY a.DEPTNO 
HAVING  AVG(a.SAL )<(SELECT avg(z.SAL) from  EMP z  WHERE z.DEPTNO =10) 


--10.查询在NEW YORK工作的所有员工 
select *
from EMP a INNER JOIN DEPT z 
ON a.DEPTNO=z.DEPTNO
AND z.loc='NEW YORK'



--11.查询10号部门的员工在整个公司中所占的比例： 





--12、查询比普通员工的最高薪水还要高的领导者姓名 



--13、找出薪水最高的五个人 
select TOP 5*
FROM EMP a 
ORDER BY a.SAL DESC 
--14、列出至少有三个员工的所有部门和部门信息
select z.DEPTNO,z.DNAME,z.LOC
from EMP a INNER JOIN  DEPT z
group BY z.DEPTNO
ON a.DEPTNO =z.DEPTNO
AND COUNT(a.ENAME)>=3 
--15、查询最后入职的5名员工
SELECT  TOP 5 a.HIREDATE
from EMP a 
ORDER BY a.HIREDATE DESC 



--16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数
SELECT COUNT(*)
from EMP a 
WHERE a.SAL <1500






--17、列出各种工作的最低工资以及从事该工作的雇员姓名

--18、求薪水最低的部门经理所在部门的名称



	