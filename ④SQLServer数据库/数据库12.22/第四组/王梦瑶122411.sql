--1.��ѯ�����ŵ����нˮ�����нˮ��ƽ��нˮ��. 
SELECT MAX(a.sal)as '���нˮ',min(a.sal)as '���нˮ',AVG(a.sal)as 'ƽ��нˮ'  
from emp a 
--2.��ѯ��SMITH�����쵼����
SELECT a.ENAME
from EMP a 
WHERE a.EMPNO in(SELECT a.MGR from EMP a WHERE a.ENAME='SMITH')
--3.��ѯ��˾����Ա���ĸ���
SELECT COUNT(a.EMPNO) as '����'
from EMP a 
--4.��ѯ��˾�����нˮ�Ƕ���
SELECT MAX(a.SAL)as '���нˮ' 
from EMP a 
--5.��ѯ��˾��ƽ�������Ƕ���
SELECT AVG(a.COMM)as 'ƽ������' 
from EMP a 
--6.��ѯ��˾��������ְ��ʱ��
SELECT MIN(a.HIREDATE)as '������ְʱ��' 
from EMP a 
--7.��ѯ��˾���н��������
SELECT COUNT(a.COMM) as '�н��������'
from EMP a 
WHERE a.COMM IS NOT NULL 
--8.��ѯ���ŵ����нˮ�Ƕ���
SELECT MAX(a.SAL)as '���нˮ'
from EMP a 
WHERE a.DEPTNO =20
--9.��ѯ����Ա�������а�����A�������нˮ
SELECT MAX(a.SAL) as '���нˮ'
from EMP a 
WHERE a.ENAME LIKE '%A%'
--10.��ѯ����λ�����нˮ�����нˮ��Ҫ��ֻͳ��нˮ>1000��
SELECT a.JOB, MAX(a.SAL )as '���нˮ',MIN(a.SAL)as '���нˮ'  
from EMP a 
Where a.sal>1000
GROUP BY a.JOB
--11.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ�г�ƽ��нˮ>2000 
SELECT  a.DEPTNO, AVG(a.SAL) as 'ƽ��нˮ' 
from EMP a
GROUP BY a.DEPTNO
HAVING AVG(a.SAL)>2000
--12.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ��Ա�������а���
--��A���Ų���ͳ�ƣ�ֻ�г�ƽ��нˮ>1500�ģ�����ƽ��нˮ��������
SELECT a.DEPTNO, AVG(a.SAL)as 'ƽ��нˮ'
from EMP a 
WHERE a.ENAME LIKE '%A%' 
GROUP BY a.DEPTNO
HAVING AVG(a.SAL)>1500
ORDER BY AVG(a.SAL) DESC
 --13.��ѯԱ�����й��ʴ��ڵ�Ա���������͹���
SELECT a.ENAME,a.SAL
from EMP a 
WHERE a.SAL>1600
--14.��ѯԱ������Ա�����ǵ�Ա���������Ͳ��ű��
SELECT a.ENAME,a.DEPTNO
from EMP a 
WHERE a.EMPNO=17
--15.ѡ��Ա�����й��ʲ��ڵ��ڵ�Ա���������͹���
SELECT a.ENAME,a.SAL
from EMP a
WHERE a.SAL NOT BETWEEN 40000 AND 5000
--16.ѡ��Ա�������ںͲ��Ź�����Ա���������Ͳ��ź�
SELECT a.ENAME,a.DEPTNO
from EMP a 
WHERE a.DEPTNO IN (20,30) 
--17.ѡ��Ա������û�й����ߵ�Ա��������ְλ����ְλ����
SELECT a.ENAME ,a.JOB
from EMP a
WHERE a.MGR IS NULL
ORDER BY a.JOB 
--18.ѡ��Ա�������н����Ա�����������ʺͽ��𣬰����ʵ�������
SELECT a.ENAME,a.SAL,a.COMM
from EMP a 
WHERE a.COMM IS NOT NULL
ORDER BY a.SAL DESC
--19.ѡ��Ա������Ա�������ĵ�������ĸ��A
SELECT a.ENAME
from EMP a 
WHERE a.ENAME LIKE '__A%' 
--20.�г����ű��еĲ������ƺ����ڳ���(�д�
SELECT s.DNAME,s.LOC
from DEPT s
--21.��ʾԱ�����еĲ��ظ��ĸ�λjob 
SELECT DISTINCT a.JOB
from EMP a 
--22.����Ա�����е�Ա��������ְλ��нˮ����֮���ö������ӣ���ͷ��ʾ�ɼ��
SELECT  '����'+a.ENAME+',ְλ'+a.JOB+',нˮ'+cast(a.sal as nvarchar)as '���'
from EMP a 
--23.��ѯԱ������Ա���ţ����������ʣ��Լ�������߰ٷ�֮֮��Ľ��
SELECT a.EMPNO,a.ENAME,a.SAL,a.SAL*1.2 as '������߰ٷ�֮'
from EMP a 
--24.��ѯԱ���������͹������������޶�Ϊ�������������1200�����Ҳ�ѯ�������ְʱ�������������ְ��Ա������ǰ��
SELECT a.ENAME,a.SAL,a.HIREDATE
from EMP a 
WHERE a.SAL>1200
ORDER BY a.HIREDATE 
--25.�г�����ACCOUNTING����֮�⻹��ʲô����
SELECT a.JOB
from EMP a
WHERE a.JOB NOT IN  ('ACCOUNTING')
--26.�ѹ�Ա�����ŷ��飬�����нˮ�����ź�Ҫ����˵������еڶ�����ĸ�ǡ�A����Ա����
-- ���Ҳ��ŵ�ƽ��нˮ> 3000,���ղ��ű�ŵ�������
SELECT a.DEPTNO ,MAX(a.SAL)as '���нˮ'
from EMP a 
WHERE a.ENAME LIKE '_A%'
GROUP BY a.DEPTNO 
HAVING AVG(a.SAL) >3000
ORDER BY a.DEPTNO DESC
