SELECT *
FROM EMP
SELECT *
FROM DEPT

--1.��ѯ�����ŵ����нˮ�����нˮ��ƽ��нˮ��. 
SELECT a.DEPTNO, max(a.SAL) as'���нˮ',min(a.SAL)as'���нˮ',AVG(a.SAL)as'ƽ��нˮ'
from EMP a
GROUP BY a.DEPTNO


--2.��ѯ��SMITH�����쵼���� 
SELECT b.ENAME
from EMP b
WHERE b.EMPNO=(SELECT c.MGR FROM EMP c WHERE c.ENAME ='SMITH' )

--3.��ѯ��˾����Ա���ĸ��� 
SELECT COUNT(c.EMPNO) 
from EMP c


--4.��ѯ��˾�����нˮ�Ƕ��� 
SELECT MAX(d.SAL)
from EMP d


--5.��ѯ��˾��ƽ�������Ƕ��� 
SELECT AVG(e.COMM) 
from EMP e
where e.COMM IS NOT NULL

--6.��ѯ��˾��������ְ��ʱ�� 
SELECT MAX(f.HIREDATE) 
from EMP f


--7.��ѯ��˾���н�������� 
SELECT COUNT(g.EMPNO) 
from EMP g
WHERE g.COMM IS NOT NULL

--8.��ѯ20���ŵ����нˮ�Ƕ��� 
SELECT MAX(h.SAL) 
from EMP h
WHERE h.DEPTNO=20

--9.��ѯ����Ա�������а�����A�������нˮ 
SELECT max(i.SAL)
from EMP i
WHERE i.ENAME LIKE '%A%'


--10.��ѯ����λ�����нˮ�����нˮ��Ҫ��ֻͳ��нˮ>1000�� 
SELECT j.job as'��λ',MAX(j.sal) as'���нˮ',MIN(j.SAL)as'���нˮ'
from EMP j
WHERE j.SAL>1000
GROUP BY j.JOB

--11.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ�г�ƽ��нˮ>2000 
SELECT k.DEPTNO as'����',AVG(k.SAL) as'ƽ��нˮ'
from EMP k
GROUP BY k.DEPTNO
HAVING AVG(k.SAL)>2000

--12.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ��Ա�������а��� 
--��A���Ų���ͳ�ƣ�ֻ�г�ƽ��нˮ>1500�ģ�����ƽ��нˮ�������� 
SELECT k.DEPTNO as'����',AVG(k.SAL) as'ƽ��нˮ'
from EMP k
WHERE k.ENAME LIKE '%A%'
GROUP BY k.DEPTNO
HAVING AVG(k.SAL)>1500
ORDER BY AVG(k.SAL) DESC


--13.��ѯԱ�����й��ʴ���1600��Ա���������͹��� 
SELECT l.ENAME as'����',l.SAL as'����'
from EMP l
WHERE l.SAL>1600

--14.��ѯԱ������Ա������17��Ա���������Ͳ��ű�� 
SELECT m.ENAME as'����',m.DEPTNO as'����'
from EMP m
where m.EMPNO=17

--15.ѡ��Ա�����й��ʲ���4000��5000�ڵ�Ա���������͹��� 
SELECT n.ENAME as'����',n.SAL as'����'
from EMP n
where n.SAL NOT BETWEEN 4000 AND 5000 

--16.ѡ��Ա��������20��30���Ź�����Ա���������Ͳ��ź� 
SELECT o.ENAME,o.DEPTNO 
from EMP o
WHERE o.DEPTNO IN (20,30)

--17.ѡ��Ա������û�й����ߵ�Ա��������ְλ����ְλ����
SELECT p.ENAME,p.JOB
from EMP p
where p.MGR is NULL  
GROUP BY p.JOB,p.ENAME
ORDER BY p.JOB


--18.ѡ��Ա�������н����Ա�����������ʺͽ��𣬰����ʵ������� 
SELECT r.ENAME,r.SAL,r.COMM
from EMP r
WHERE r.COMM IS NOT NULL
ORDER BY r.SAL DESC



--19.ѡ��Ա������Ա�������ĵ�������ĸ��A��Ա������ 
SELECT q.ENAME
from EMP q
where q.ENAME LIKE '__A%'


--20.�г����ű��еĲ������ƺ����ڳ��� 
SELECT a.DNAME as'��������',a.LOC as'���ڳ���'
from DEPT a


--21.��ʾԱ�����еĲ��ظ��ĸ�λjob 
SELECT  a.JOB as'��λ'
from EMP a
group by a.job
having count(a.job)=1



--22.����Ա�����е�Ա��������ְλ��нˮ����֮���ö������ӣ���ͷ��ʾ�ɼ�� 
SELECT b.ENAME+','+b.JOB+','+CASt(b.sal as nvarchar) as'���'
from EMP b


--23.��ѯԱ������Ա���ţ����������ʣ��Լ�������߰ٷ�֮20֮��Ľ�� 
SELECT c.EMPNO,c.ENAME,c.SAL,c.EMPNO,c.ENAME,CAST(c.SAL AS float)*1.2 as'��߰ٷ�֮��ʮ�Ĺ���'
from EMP c



--24.��ѯԱ���������͹������������޶�Ϊ�������������1200�����Ҳ�ѯ�������ְʱ�������������ְ��Ա������ǰ�� 
SELECT d.ENAME,d.SAL
from EMP d
WHERE d.SAL>1200
ORDER BY d.HIREDATE

--25.�г�����ACCOUNTING����֮�⻹��ʲô���� 
SELECT DISTINCT a.DNAME
from DEPT a
where a.DNAME !='ACCOUNTING'

--26.�ѹ�Ա�����ŷ��飬�����нˮ�����ź� Ҫ����˵������еڶ�����ĸ�ǡ�A����Ա���� ���Ҳ��ŵ�ƽ��нˮ > 3000,���ղ��ű�ŵ�������




SELECT MAX(a.SAL) as'���нˮ',a.DEPTNO
from EMP a
where a.ENAME  NOT LIKE '_A%' 
GROUP BY a.DEPTNO
HAVING avg(a.SAL)>3000
ORDER BY a.DEPTNO DESC




SELECT * FROM EMP

