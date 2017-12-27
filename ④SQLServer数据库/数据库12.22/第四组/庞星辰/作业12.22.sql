SELECT *
FROM EMP

--1.��ѯ�����ŵ����нˮ�����нˮ��ƽ��нˮ��. 
SELECT a.DEPTNO, max(a.sal)AS'���нˮ' ,min(a.SAL) as '���нˮ',avg(a.SAL) as 'ƽ��нˮ'
FROM EMP a
GROUP BY a.DEPTNO
--2.��ѯ��SMITH�����쵼���� 
select  a.ENAME
from EMP a
WHERE a.EMPNO =(SELECT b.MGR from EMP b WHERE b.ENAME = 'SMITH')
--3.��ѯ��˾����Ա���ĸ��� 
SELECT a.ENAME
FROM EMP a
--4.��ѯ��˾�����нˮ�Ƕ��� 
select MAX(a.SAL) as '���нˮ'
from EMP a
--5.��ѯ��˾��ƽ�������Ƕ��� 
select AVG(a.comm) as 'ƽ������'
from EMP a
--6.��ѯ��˾��������ְ��ʱ�� 
select MAX(a.HIREDATE)as '������ְ'
from EMP a
--7.��ѯ��˾���н�������� 
select COUNT(a.comm) as '�н��������'
from EMP a
--8.��ѯ20���ŵ����нˮ�Ƕ��� 
select MAX(a.SAL) 
from EMP a
WHERE a.DEPTNO=20
--9.��ѯ����Ա�������а�����A�������нˮ 
select MAX(a.SAL) as '�����а�����A�������нˮ'
from EMP a
WHERE a.ENAME LIKE '%A%'
--10.��ѯ����λ�����нˮ�����нˮ��Ҫ��ֻͳ��нˮ>1000�� 
select a.JOB, max(a.SAL) as '����λ�����нˮ',MIN(a.SAL) as '���нˮ' 
from EMP a
WHERE a.SAL>1000
GROUP BY a.JOB 
--11.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ�г�ƽ��нˮ>2000 
select AVG(a.SAL) as '�����ŵ�ƽ��нˮ' ,a.DEPTNO as '���ű��'
from EMP a
GROUP BY a.DEPTNO 
HAVING AVG(a.SAL)>2000
--12.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ��Ա�������а��� 
--   ��A���Ų���ͳ�ƣ�ֻ�г�ƽ��нˮ>1500�ģ�����ƽ��нˮ�������� 
select AVG(a.SAL) as '�����ŵ�ƽ��нˮ' ,a.DEPTNO as '���ű��'
from EMP a
WHERE a.ENAME LIKE '%A%'
GROUP BY a.DEPTNO
HAVING AVG(a.SAL)>1500
ORDER BY AVG(a.SAL) DESC  
--13.��ѯԱ�����й��ʴ���1600��Ա���������͹��� 
select a.ENAME as '����',a.SAL as '����'
from EMP a
WHERE a.SAL>1600
--14.��ѯԱ������Ա������17��Ա���������Ͳ��ű�� 
select a.ENAME,a.DEPTNO
from EMP a
WHERE a.EMPNO=17
--15.ѡ��Ա�����й��ʲ���4000��5000�ڵ�Ա���������͹��� 
select a.ENAME as '����',a.SAL AS '����'
from EMP a
WHERE a.SAL NOT IN (4000,5000)
--16.ѡ��Ա��������20��30���Ź�����Ա���������Ͳ��ź� 
select a.ENAME as '����',a.DEPTNO as '���ź�'
from EMP a
WHERE a.DEPTNO in(20,30)
--17.ѡ��Ա������û�й����ߵ�Ա��������ְλ����ְλ���� 
select a.ENAME as 'Ա������',a.JOB as 'ְλ'
from EMP a
WHERE a.MGR is null
ORDER BY a.JOB DESC
--18.ѡ��Ա�������н����Ա�����������ʺͽ��𣬰����ʵ������� 
select a.ENAME,a.SAL,a.COMM
from EMP a
WHERE a.COMM IS NOT NULL AND a.COMM!=0
ORDER BY a.SAL DESC 
--19.ѡ��Ա������Ա�������ĵ�������ĸ��A��Ա������ 
select a.ENAME
from EMP a
WHERE a.ENAME LIKE '__A%'
--20.�г����ű��еĲ������ƺ����ڳ��� 
select a.DEPTNO,a.LOC
from DEPT a
--21.��ʾԱ�����еĲ��ظ��ĸ�λjob 
select a.JOB
from EMP a
GROUP BY a.JOB
HAVING COUNT(a.JOB)=1
--22.����Ա�����е�Ա��������ְλ��нˮ����֮���ö������ӣ���ͷ��ʾ�ɼ�� 
select '����'+a.ENAME+',ְλ'+a.JOB+',нˮ'+CAST(a.sal as nvarchar) as '���'
from EMP a
--23.��ѯԱ������Ա���ţ����������ʣ��Լ�������߰ٷ�֮20֮��Ľ�� 
select a.EMPNO,a.ENAME,a.SAL,a.SAL*1.2 as '������߰ٷ�֮20֮��Ľ��'
from EMP a
--24.��ѯԱ���������͹������������޶�Ϊ�������������1200��
--   ���Ҳ�ѯ�������ְʱ�������������ְ��Ա������ǰ�� 
select a.ENAME,a.SAL
from EMP a
WHERE a.SAL>1200 
ORDER BY a.HIREDATE 
--25.�г�����ACCOUNTING����֮�⻹��ʲô���� 
select a.DNAME
from DEPT a
WHERE a.DNAME NOT IN ('ACCOUNTING')
--26.�ѹ�Ա�����ŷ��飬�����нˮ�����ź� Ҫ����˵������еڶ�����ĸ�ǡ�A����Ա��
--   ���Ҳ��ŵ�ƽ��нˮ > 3000,���ղ��ű�ŵ������� 
SELECT MAX(a.SAL),a.DEPTNO
from EMP a
WHERE a.ENAME NOT  like '_A%'
GROUP BY a.DEPTNO
HAVING AVG(a.SAL)>3000
ORDER BY a.DEPTNO DESC
 

