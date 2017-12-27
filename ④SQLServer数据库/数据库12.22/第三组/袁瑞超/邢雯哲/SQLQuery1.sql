SELECT * FROM EMP

--1.��ѯ�����ŵ����нˮ�����нˮ��ƽ��нˮ��.

SELECT MAX(a.SAL),MIN(a.SAL),AVG(a.SAL) 

FROM EMP a

--2.��ѯ��SMITH�����쵼���� 

SELECT a.ENAME

FROM EMP a

WHERE a.EMPNO=1

--3.��ѯ��˾����Ա���ĸ��� 

SELECT COUNT(a.EMPNO)as'����'

FROM EMP a

--4.��ѯ��˾�����нˮ�Ƕ��� 

SELECT MAX(a.SAL)

FROM EMP a

--5.��ѯ��˾��ƽ�������Ƕ��� 

SELECT AVG(b.COMM)

FROM EMP b

--6.��ѯ��˾��������ְ��ʱ�� 

SELECT max (b.HIREDATE)

 FROM EMP b

--7.��ѯ��˾���н�������� 

SELECT COUNT(b.EMPNO)as'����'

FROM EMP b

WHERE b.COMM IS NOT NULL

--8.��ѯ20���ŵ����нˮ�Ƕ���

SELECT MAX(b.SAL)

FROM EMP b

WHERE b.DEPTNO=20
 
--9.��ѯ����Ա�������а�����A�������нˮ

SELECT MAX(b.SAL)
 
FROM EMP b

WHERE b.ENAME LIKE'%A%'

--10.��ѯ����λ�����нˮ�����нˮ��Ҫ��ֻͳ��нˮ>1000�� 

SELECT MAX(c.SAL),MIN(c.SAL)

FROM EMP c

WHERE c.SAL>1000

--11.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ�г�ƽ��нˮ>2000 

SELECT AVG (c.SAL),c.DEPTNO

FROM EMP c

WHERE c.SAL>2000

--12.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ��Ա�������а��� 
--��A���Ų���ͳ�ƣ�ֻ�г�ƽ��нˮ>1500�ģ�����ƽ��нˮ��������
 
SELECT AVG(f.SAL),f.DEPTNO 

FROM EMP f

where f.ENAME LIKE'%A%'

GROUP BY f.DEPTNO 

HAVING AVG(f.SAL)>1500

ORDER BY AVG(f.SAL)desc  
 
--13.��ѯԱ�����й��ʴ���1600��Ա���������͹��� 

SELECT C.ENAME,C.SAL

FROM EMP C

WHERE C.SAL>1600

--14.��ѯԱ������Ա������17��Ա���������Ͳ��ű�� 

SELECT c.ENAME,c.DEPTNO

FROM EMP c

WHERE c.EMPNO=17

--15.ѡ��Ա�����й��ʲ���4000��5000�ڵ�Ա���������͹��� 

SELECT c.ENAME,c.SAL

FROM EMP c

WHERE c.SAL NOT BETWEEN 4000 AND 5000

--16.ѡ��Ա��������20��30���Ź�����Ա���������Ͳ��ź� 

SELECT c.ENAME,c.DEPTNO

FROM EMP c

WHERE c.JOB BETWEEN 20 AND 30
--17.ѡ��Ա������û�й����ߵ�Ա��������ְλ����ְλ���� 

SELECT d.ENAME,d.JOB

FROM EMP d

WHERE d.MGR IS NULL

ORDER BY d.JOB

--18.ѡ��Ա�������н����Ա�����������ʺͽ��𣬰����ʵ������� 

SELECT d.ENAME,d.SAL,d.COMM

FROM EMP d

WHERE d.COMM IS not NULL

ORDER BY d.SAL desc

--19.ѡ��Ա������Ա�������ĵ�������ĸ��A��Ա������ 

SELECT d.ENAME

FROM EMP d

WHERE d.ENAME LIKE'__A%'

--20.�г����ű��еĲ������ƺ����ڳ���

SELECT *

FROM DEPT a

--21.��ʾԱ�����еĲ��ظ��ĸ�λjob 

SELECT DISTINCT f.JOB

FROM EMP f

--22.����Ա�����е�Ա��������ְλ��нˮ����֮���ö������ӣ���ͷ��ʾ�ɼ�� 

SELECT t.ENAME,t.JOB,t.SAL,'������'+t.ENAME+',ְλ��'+t.JOB+',нˮ��'+CAST(t.SAL AS nvarchar)  as'����'

FROM EMP t

--23.��ѯԱ������Ա���ţ����������ʣ��Լ�������߰ٷ�֮20֮��Ľ�� 

SELECT f.EMPNO,f.ENAME,f.SAL,f.SAL*1.2

FROM EMP f


--24.��ѯԱ���������͹������������޶�Ϊ�������������1200�����Ҳ�ѯ�������ְʱ���������
--����ְ��Ա������ǰ�� 

SELECT *

FROM

--25.�г�����ACCOUNTING����֮�⻹��ʲô���� 

SELECT *

FROM

--26.�ѹ�Ա�����ŷ��飬�����нˮ�����ź� Ҫ����˵������еڶ�����ĸ�ǡ�A����Ա����
-- ���Ҳ��ŵ�ƽ��нˮ > 3000,���ղ��ű�ŵ������� 

SELECT MAX(f.SAL),f.DEPTNO

FROM EMP f

WHERE f.ENAME LIKE'_A%' OR f.SAL>3000

GROUP BY f.DEPTNO

ORDER BY f.DEPTNO DESC 

