--1.��ѯ�����ŵ����нˮ�����нˮ��ƽ��нˮ��. 
select deptno,max(sal)as '���нˮ',min(sal)as'���нˮ',AVG(sal)'ƽ��нˮ'
from emp
group by deptno

--2.��ѯ��SMITH�����쵼���� 
select *
from emp
where ename='smith'

--3.��ѯ��˾����Ա���ĸ��� 
select COUNT(*) as'Ա������'
from emp

--4.��ѯ��˾�����нˮ�Ƕ��� 
select MAX(sal)as'���нˮ'
from emp


--5.��ѯ��˾��ƽ�������Ƕ��� 
select AVG(comm) as'ƽ������'
from emp


--6.��ѯ��˾��������ְ��ʱ�� 
select MAX(hiredate) 
from emp


--7.��ѯ��˾���н�������� 
select COUNT(*) 
from emp
where comm is not null


--8.��ѯ20���ŵ����нˮ�Ƕ��� 
select MAX(sal)
 from emp
where deptno='20'


--9.��ѯ����Ա�������а�����A�������нˮ
select MAX(sal)
from emp 
where ename LIKE'%A%'

--10.��ѯ����λ�����нˮ�����нˮ��Ҫ��ֻͳ��нˮ>1000�� 
select MAX(sal),MIN(sal)
from emp
where sal>1000



--11.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ�г�ƽ��нˮ>2000 
select AVG(sal)
from emp
group by deptno
having avg(sal)>2000

--12.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ��Ա�������а��� 
��A���Ų���ͳ�ƣ�ֻ�г�ƽ��нˮ>1500�ģ�����ƽ��нˮ�������� 
select deptno, AVG(sal)
from emp
where ename like '%A%'
group by deptno
having AVG(sal)>1500
order by AVG(sal) desc

--13.��ѯԱ�����й��ʴ���1600��Ա���������͹��� 
select ename,sal
from emp
where sal >1600


--14.��ѯԱ������Ա������17��Ա���������Ͳ��ű�� 
select ename ,deptno
from emp
where empno='17'

--15.ѡ��Ա�����й��ʲ���4000��5000�ڵ�Ա���������͹��� 
select ename,sal
from emp
where sal not between 4000 and 5000

--16.ѡ��Ա��������20��30���Ź�����Ա���������Ͳ��ź� 
select ename, deptno
from emp
where deptno between 20and 30

--17.ѡ��Ա������û�й����ߵ�Ա��������ְλ����ְλ���� 
SELECT ENAME,JOB,EMPNO
FROM EMP
WHERE JOB NOT IN (SELECT JOB FROM EMP WHERE MGR IN (SELECT MGR FROM EMP WHERE EMPNO IN (SELECT MGR FROM EMP)))
ORDER BY JOB

--18.ѡ��Ա�������н����Ա�����������ʺͽ��𣬰����ʵ������� 
SELECT ENAME,SAL,COMM
FROM EMP
WHERE COMM IS NOT NULL
ORDER BY SAL DESC

--19.ѡ��Ա������Ա�������ĵ�������ĸ��A��Ա������ 
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '__A%'

20.�г����ű��еĲ������ƺ����ڳ��� 
SELECT LOC
FROM DEPT


--21.��ʾԱ�����еĲ��ظ��ĸ�λjob 
SELECT DISTINCT JOB
FROM EMP


--22.����Ա�����е�Ա��������ְλ��нˮ����֮���ö������ӣ���ͷ��ʾ�ɼ�� 
SELECT '����'+ ENAME+',ְλ'+JOB+',нˮ'+cast(SAL AS nvarchar) as '���' 
FROM EMP


--23.��ѯԱ������Ա���ţ����������ʣ��Լ�������߰ٷ�֮20֮��Ľ�� 
SELECT EMPNO,ENAME,SAL,SAL*1.2
FROM EMP


--24.��ѯԱ���������͹������������޶�Ϊ�������������1200�����Ҳ�ѯ�������ְʱ�������������ְ��Ա������ǰ�� 
SELECT ENAME,SAL
FROM EMP
WHERE SAL>1200
ORDER BY HIREDATE
--25.�г�����ACCOUNTING����֮�⻹��ʲô���� 
SELECT DNAME 
FROM DEPT 
WHERE DNAME NOT LIKE'ACCOUNTING'
--26.�ѹ�Ա�����ŷ��飬�����нˮ�����ź� Ҫ����˵������еڶ�����ĸ�ǡ�A����Ա���� ���Ҳ��ŵ�ƽ��нˮ > 3000,���ղ��ű�ŵ������� 

SELECT MAX(SAL),DEPTNO
FROM EMP
WHERE ENAME NOT LIKE '_A%'
GROUP BY DEPTNO
HAVING AVG(SAL)>1000
ORDER BY DEPTNO DESC
