SELECT*
from EMP 
 --1.��ѯ�����ŵ����нˮ�����нˮ��ƽ��нˮ��. 
SELECT a.DEPTNO as'���ű��', MAX(a.SAL)AS'���нˮ',MIN(a.SAL)���нˮ,avg(a.SAL)as'ƽ��нˮ' 
FROM EMP a
GROUP BY a.DEPTNO

--2.��ѯ��SMITH�����쵼���� 
SELECT a.ENAME as'����'	
FROM EMP a
WHERE a.ENAME='SMITH'
GROUP BY a.ENAME

--3.��ѯ��˾����Ա���ĸ��� 
SELECT  a.ENAME
from EMP a
GROUP BY a.ENAME

--4.��ѯ��˾�����нˮ�Ƕ��� 
SELECT MAX(a.SAL)
from EMP a


--5.��ѯ��˾��ƽ�������Ƕ��� 
SELECT AVG(a.COMM)
from EMP a

--6.��ѯ��˾��������ְ��ʱ�� 
SELECT MAX(a.HIREDATE)AS '������ְʱ��' 
from EMP a

--7.��ѯ��˾���н�������� 
SELECT *
from EMP a
WHERE a.COMM IS NOT NULL

--8.��ѯ20���ŵ����нˮ�Ƕ��� 
SELECT MAX(a.SAL)
FROM EMP a
WHERE a.DEPTNO=20


--9.��ѯ����Ա�������а�����A�������нˮ 
SELECT MAX(a.SAL)
from EMP a
WHERE a.ENAME LIKE'%A%'

--10.��ѯ����λ�����нˮ�����нˮ��Ҫ��ֻͳ��нˮ>1000�� 
SELECT a.JOB as'��λ',max(a.SAL)as '���нˮ',MIN(a.SAL) as '���нˮ' 
from EMP a
WHERE a.SAL>1000
GROUP BY a.JOB
--11.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ�г�ƽ��нˮ>2000 
SELECT a.DEPTNO as'���ű��',avg(a.SAL)as 'ƽ��нˮ'
from EMP a
GROUP BY a.DEPTNO
HAVING avg(a.SAL)>2000

--12.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ��Ա�������а��� 
--��A���Ų���ͳ�ƣ�ֻ�г�ƽ��нˮ>1500�ģ�����ƽ��нˮ�������� 

--13.��ѯԱ�����й��ʴ���1600��Ա���������͹��� 
SELECT a.ENAME as'����' ,a.SAL as'����'
FROM EMP  a
WHERE a.SAL>1600
--14.��ѯԱ������Ա������17��Ա���������Ͳ��ű�� 
SELECT a.ENAME as'����',a.DEPTNO as'���ű��'
from EMP  a
WHERE a.EMPNO =17

--15.ѡ��Ա�����й��ʲ���4000��5000�ڵ�Ա���������͹��� 
SELECT a.ENAME as'����',a.SAL as'����'
from EMP a
WHERE a.SAL   NOT BETWEEN 4000 and 5000

--16.ѡ��Ա��������20��30���Ź�����Ա���������Ͳ��ź� 
SELECT a.ENAME as '����',a.DEPTNO as'���ź�'
FROM EMP a
WHERE a.DEPTNO in (20,30)

--17.ѡ��Ա������û�й����ߵ�Ա��������ְλ����ְλ���� 
SELECT a.ENAME as '����' ,a.JOB as 'ְλ'
from EMP a
WHERE a.JOB NOT IN('MANAGER')
ORDER BY a.JOB 


--18.ѡ��Ա�������н����Ա�����������ʺͽ��𣬰����ʵ������� 
SELECT a.ENAME as'����' ,a.SAL as '����',a.COMM as '����'
from EMP a
WHERE a.COMM is NOT NULL
ORDER BY a.SAL desc


--19.ѡ��Ա������Ա�������ĵ�������ĸ��A��Ա������ 
SELECT a.ENAME'����'
from EMP a
WHERE a.ENAME like'__A%'

--20.�г����ű��еĲ������ƺ����ڳ���
SELECT a.DEPTNO
from EMP a
GROUP BY  a.DEPTNO
--21.��ʾԱ�����еĲ��ظ��ĸ�λjob
SELECT DISTINCT a.JOB
from EMP a 
GROUP BY a.JOB

--22.����Ա�����е�Ա��������ְλ��нˮ����֮���ö������ӣ���ͷ��ʾ�ɼ�� 
SELECT *,'����:'+'ENAME'+',ְλ:'+'JOB'+',нˮ:'+'SAL' AS '����'
from EMP 

--23.��ѯԱ������Ա���ţ����������ʣ��Լ�������߰ٷ�֮20֮��Ľ��
SELECT a.*,'����'+a.EMPNO+'����'+a.ENAME+'����'+CAST(a.SAL*2% as nvarchar) 
FROM EMP a 
GROUP BY a.EMPNO,a.ENAME,a.SAL
--24.��ѯԱ���������͹������������޶�Ϊ�������������1200�����Ҳ�ѯ�������ְʱ�������������ְ��Ա������ǰ�� 
SELECT a.ENAME as'����',a.SAL as'����',a.HIREDATE as'ʱ��'
from EMP a
WHERE a.SAL>1200
GROUP BY a.ENAME,a.SAL ,a.HIREDATE
ORDER BY a.HIREDATE


--25.�г�����ACCOUNTING����֮�⻹��ʲô���� 
SELECT a.DEPTNO
from EMP a
WHERE a.DEPTNO not IN ('ACCOUNTING')
GROUP BY a.DEPTNO
--26.�ѹ�Ա�����ŷ��飬�����нˮ�����ź� Ҫ����˵������еڶ�����ĸ�ǡ�A����Ա���� ���Ҳ��ŵ�ƽ��нˮ > 3000,���ղ��ű�ŵ������� 
SELECT  a.DEPTNO as'���ű��', MAX(a.SAL)as'���нˮ'
from EMP a
WHERE a.ENAME not LIKE'__A%'  
GROUP BY a.DEPTNO
HAVING  avg(a.SAL)>3000
ORDER BY a.DEPTNO desc




