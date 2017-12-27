--1.查询各部门的最高薪水、最低薪水、平均薪水…. 
SELECT DEPTNO as '部门编号',MAX(SAL) as '最高薪水',MIN(SAL) as '最低薪水',AVG(SAL) as '平均薪水' FROM EMP 
GROUP BY DEPTNO;

--2.查询‘SMITH’的领导姓名 
SELECT ENAME FROM EMP
WHERE EMPNO=(SELECT MGR FROM EMP WHERE ENAME = 'SMITH');

--3.查询公司所有员工的个数 
SELECT COUNT(EMPNO) FROM EMP;

--4.查询公司中最高薪水是多少 
SELECT MAX(SAL) FROM EMP;

--5.查询公司中平均奖金是多少 
SELECT AVG(COMM) FROM EMP;

--6.查询公司中最晚入职的时间 
SELECT MAX(HIREDATE) FROM EMP;

--7.查询公司中有奖金的人数 
SELECT * FROM EMP
WHERE COMM IS NOT NULL AND COMM>0;

--8.查询20部门的最高薪水是多少 
SELECT MAX(SAL) FROM EMP
WHERE DEPTNO = '20';

--9.查询所有员工姓名中包含‘A’的最高薪水
SELECT MAX(SAL) FROM EMP
WHERE ENAME LIKE '%A%';

--10.查询各岗位的最高薪水，最低薪水。要求只统计薪水>1000的 
SELECT JOB AS '职位',MAX(SAL) AS '最高薪水',MIN(SAL) AS '最低薪水' FROM EMP
WHERE SAL>1000
GROUP BY JOB;


--11.查询各部门的平均薪水及部门编号，要求只列出平均薪水>2000
SELECT AVG(SAL) FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL)>2000;

--12.查询各部门的平均薪水及部门编号，要求只有员工姓名中包含 
--‘A’才参与统计，只列出平均薪水>1500的，按照平均薪水降序排列 
SELECT AVG(SAL) AS '平均薪水',DEPTNO AS '部门编号' FROM EMP
WHERE ENAME LIKE '%A%'
GROUP BY DEPTNO
HAVING AVG(SAL)>1500
ORDER BY AVG(SAL) DESC;

--13.查询员工表中工资大于1600的员工的姓名和工资 
SELECT ENAME,SAL FROM EMP 
WHERE SAL>1600;


--14.查询员工表中员工号是17的员工的姓名和部门编号
SELECT ENAME,DEPTNO FROM EMP
WHERE EMPNO =17;
 
--15.选择员工表中工资不在4000到5000内的员工的姓名和工资 
SELECT ENAME,SAL FROM EMP 
WHERE SAL NOT BETWEEN 4000 AND 5000;

--16.选择员工表中在20和30部门工作的员工的姓名和部门号 
SELECT ENAME,DEPTNO FROM EMP 
WHERE DEPTNO IN (20,30);

--17.选择员工表中没有管理者的员工姓名及职位，按职位排序 
SELECT ENAME,JOB FROM EMP
WHERE MGR IS NULL ;

--18.选择员工表中有奖金的员工姓名，工资和奖金，按工资倒序排列
SELECT ENAME,SAL,COMM FROM EMP 
WHERE COMM IS NOT NULL AND COMM>0
ORDER BY SAL DESC;

--19.选择员工表中员工姓名的第三个字母是A的员工姓名
SELECT ENAME FROM EMP 
WHERE ENAME LIKE '__A%';

--20.列出部门表中的部门名称和所在城市
SELECT DNAME,LOC FROM DEPT;
 
--21.显示员工表中的不重复的岗位job 
SELECT JOB FROM EMP
GROUP BY JOB
HAVING COUNT(JOB)=1;

--22.连接员工表中的员工姓名、职位、薪水，列之间用逗号连接，列头显示成简介
SELECT '姓名:'+ENAME+',职位:'+JOB+',薪水'+CAST(SAL AS nvarchar) AS '简介' FROM EMP;


--23.查询员工表中员工号，姓名，工资，以及工资提高百分之20之后的结果
SELECT EMPNO,ENAME,SAL,SAL*1.2
FROM EMP;

--24.查询员工的姓名和工资数，条件限定为工资数必须大于1200，并且查询结果按入职时间进行排序。早入职的员工排在前面 
SELECT ENAME,SAL FROM EMP
WHERE SAL>1200
ORDER BY HIREDATE;

--25.列出除了ACCOUNTING部门之外还有什么部门 
SELECT DNAME FROM DEPT
WHERE DNAME != 'ACCOUNTING';


--26.把雇员按部门分组，求最高薪水，部门号 要求过滤掉名字中第二个字母是’A’的员工，并且部门的平均薪水 > 3000,按照部门编号倒序排列 
SELECT MAX(SAL) AS '最高薪水',DEPTNO AS '部门号' FROM EMP
WHERE ENAME NOT LIKE '_A%'
GROUP BY DEPTNO
HAVING AVG(SAL)>3000 
ORDER BY DEPTNO DESC