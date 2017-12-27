SELECT*FROM EMP;
SELECT*FROM DEPT;

--1.��ѯ�����ŵ����нˮ�����нˮ��ƽ��нˮ��.
 SELECT  a.JOB ,max(A.sal)as '���нˮ',min(a.sal) as '���нˮ',avg(A.sal) as 'ƽ��нˮ' 
 from EMP   a
 GROUP BY a.JOB
 
--2.��ѯ��SMITH�����쵼���� 
SELECT*
FROM EMP a

WHERE a.ENAME like 'smith'

--3.��ѯ��˾����Ա���ĸ��� 
SELECT COUNT(*) as'����' 
FROM EMP a

--4.��ѯ��˾�����нˮ�Ƕ��� 
SELECT	max(a.SAL)
from emp a

--5.��ѯ��˾��ƽ�������Ƕ��� 
SELECT AVG(a.comm)
from EMP  a

--6.��ѯ��˾��������ְ��ʱ�� 
SELECT MAX(a.HIREDATE)  
from EMP a

--7.��ѯ��˾���н�������� 
SELECT  COUNT(*)
from EMP a
where a.comm   IS NOT  null

--8.��ѯ20���ŵ����нˮ�Ƕ��� 
SELECT  MAX(a.SAL) 
from EMP a
where a.deptno=20

--9.��ѯ����Ա�������а�����A�������нˮ 
SELECT  MAX(a.SAL ) 
from EMP a
where a.ENAME LIKE  '%A%'

--10.��ѯ����λ�����нˮ�����нˮ��Ҫ��ֻͳ��нˮ>1000�� 
SELECT MAX(a.SAL)as '���нˮ',MIN(a.SAL )  as'���нˮ'
from EMP a
where a.SAL >1000

--11.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ�г�ƽ��нˮ>2000 
SELECT  avg(a.SAL )
from EMP a
GROUP BY a.DEPTNO 
HAVING   avg (a.SAL)>200

--12.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ��Ա�������а��� 
--��A���Ų���ͳ�ƣ�ֻ�г�ƽ��нˮ>1500�ģ�����ƽ��нˮ�������� 
SELECT    AVG(a.SAL ),a.DEPTNO 
from EMP a
WHERE a.ENAME LIKE '%A%'
GROUP BY  a.DEPTNO
HAVING  AVG(a.SAL )>1500
ORDER BY avg(a.sal) desc 

--13.��ѯԱ�����й��ʴ���1600��Ա���������͹��� 
SELECT a.ENAME,a.SAL 
from EMP a 
WHERE a.SAL >1600

--14.��ѯԱ������Ա������17��Ա���������Ͳ��ű�� 

SELECT a.ENAME ,a.DEPTNO
from EMP a 
WHERE a.EMPNO=17

--15.ѡ��Ա�����й��ʲ���4000��5000�ڵ�Ա���������͹��� 
SELECT a.ENAME,a.SAL 
from EMP a 
WHERE a.SAL NOT BETWEEN 4000 AND 5000

--16.ѡ��Ա��������20��30���Ź�����Ա���������Ͳ��ź� 
SELECT a.ENAME ,a.DEPTNO 
from EMP a
where a.DEPTNO IN (20,30)


--17.ѡ��Ա������û�й����ߵ�Ա��������ְλ����ְλ���� 
SELECT a.ENAME ,a.JOB 
from EMP a
where a.mgr IS NULL 

--18.ѡ��Ա�������н����Ա�����������ʺͽ��𣬰����ʵ������� 
SELECT a.ENAME ,a.SAL ,a.COMM 
from EMP a 
WHERE a.comm IS NOT NULL 
ORDER BY a.SAL DESC 


--19.ѡ��Ա������Ա�������ĵ�������ĸ��A��Ա������ 
SELECT a.ENAME
from EMP a 
WHERE a.ENAME='__A%'

--20.�г����ű��еĲ������ƺ����ڳ��� 
SELECT a.DEPTNO 
from EMP a 


--21.��ʾԱ�����еĲ��ظ��ĸ�λjob 



--22.����Ա�����е�Ա��������ְλ��нˮ����֮���ö������ӣ���ͷ��ʾ�ɼ�� 
SELECT A.ENAME AS'����',A.JOB as' ְλ',A.SAL as'нˮ' 
FROM EMP A 

--23.��ѯԱ������Ա���ţ����������ʣ��Լ�������߰ٷ�֮20֮��Ľ�� 


--24.��ѯԱ���������͹������������޶�Ϊ�������������1200�����Ҳ�ѯ�������ְʱ�������������ְ��Ա������ǰ�� 

SELECT a.ENAME,a.SAL
from EMP a
where a.SAL >1200
ORDER BY a.hiredate asc

--26.�ѹ�Ա�����ŷ��飬�����нˮ�����ź� Ҫ����˵������еڶ�����ĸ�ǡ�A����Ա���� ���Ҳ��ŵ�ƽ��нˮ > 3000,���ղ��ű�ŵ������� 
SELECT a.ENAME
from EMP a 
WHERE a.ENAME!='_A'
HAVING avg(a.SAL)>3000
ORDER BY a.DEPTNO ASC  






