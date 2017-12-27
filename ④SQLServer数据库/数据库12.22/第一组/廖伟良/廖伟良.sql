--1.��ѯ�����ŵ����нˮ�����нˮ��ƽ��нˮ��. 
SELECT a.DEPTNO as'����',MAX(a.SAL)as'���нˮ',MIN(a.SAL)as'���нˮ',AVG(a.SAL)as'ƽ��нˮ'
from emp a
GROUP BY a.DEPTNO

--2.��ѯ��SMITH�����쵼����
SELECT DISTINCT b.MGR
from EMP b 
WHERE b.ENAME='SMITH'

--3.��ѯ��˾����Ա���ĸ��� 
SELECT COUNT(EMPNO) as'Ա������'
from EMP 

--4.��ѯ��˾�����нˮ�Ƕ��� 
SELECT MAX(SAL) as'���нˮ'
from EMP

--5.��ѯ��˾��ƽ�������Ƕ��� 
SELECT avg(COMM) as'ƽ������'
from EMP

--6.��ѯ��˾��������ְ��ʱ�� 
SELECT max(HIREDATE) as'������ְʱ��'
from EMP

--7.��ѯ��˾���н�������� 
SELECT COUNT(COMM) as'�н��������'
from EMP
WHERE COMM IS NOT NULL 

--8.��ѯ20���ŵ����нˮ�Ƕ��� 
SELECT MAX(sal)
from EMP
WHERE DEPTNO='20'

--9.��ѯ����Ա�������а�����A�������нˮ 
SELECT MAX(c.SAL) AS'���нˮ'
from EMP c
where c.ENAME LIKE '%A%'

--10.��ѯ����λ�����нˮ�����нˮ��Ҫ��ֻͳ��нˮ>1000�� 
SELECT d.JOB as'��λ',MAX(d.SAL)as'���нˮ',MIN(d.SAL)as'���нˮ'
from EMP d
WHERE d.SAL>1000
GROUP BY d.JOB

--11.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ�г�ƽ��нˮ>2000 
SELECT e.DEPTNO as'���ű��',AVG(e.SAL) as'ƽ��нˮ'
from EMP e
WHERE e.SAL>2000
GROUP BY e.DEPTNO

--12.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ��Ա�������а�����A���Ų���ͳ�ƣ�ֻ�г�ƽ��нˮ>1500�ģ�����ƽ��нˮ�������� 
SELECT f.DEPTNO as'���ű��',AVG(f.SAL) as'ƽ��нˮ'
from EMP f
WHERE f.ename like '%A%' and f.SAL>1500
GROUP BY f.DEPTNO
ORDER BY AVG(f.SAL) DESC

--13.��ѯԱ�����й��ʴ���1600��Ա���������͹��� 
SELECT ename,sal
from EMP
where SAL>1600

--14.��ѯԱ������Ա������17��Ա���������Ͳ��ű�� 
SELECT ename,deptno
from EMP
where EMPNO='17'

--15.ѡ��Ա�����й��ʲ���4000��5000�ڵ�Ա���������͹��� 
SELECT ENAME,SAL
from emp
WHERE SAL NOT BETWEEN 4000 AND 5000

--16.ѡ��Ա��������20��30���Ź�����Ա���������Ͳ��ź� 
SELECT ENAME,DEPTNO
from emp
WHERE DEPTNO IN(20,30)

--17.ѡ��Ա������û�й����ߵ�Ա��������ְλ����ְλ���� 
SELECT ENAME,JOB
from EMP
WHERE MGR IS NULL
ORDER BY JOB

--18.ѡ��Ա�������н����Ա�����������ʺͽ��𣬰����ʵ������� 
SELECT ENAME,SAL,COMM
from EMP
WHERE COMM IS NOT NULL
ORDER BY SAL desc

--19.ѡ��Ա������Ա�������ĵ�������ĸ��A��Ա������ 
SELECT ENAME
from emp
WHERE ENAME LIKE'__A%'

--20.�г����ű��еĲ������ƺ����ڳ��� 
SELECT DNAME,LOC
from DEPT

--21.��ʾԱ�����еĲ��ظ��ĸ�λjob 
SELECT JOB as'��λ'
from emp
GROUP BY JOB
HAVING COUNT(JOB)=1

--22.����Ա�����е�Ա��������ְλ��нˮ����֮���ö������ӣ���ͷ��ʾ�ɼ�� 
SELECT ENAME+','+JOB+','+cast(SAL AS nvarchar) as'���'
from emp

--23.��ѯԱ������Ա���ţ����������ʣ��Լ�������߰ٷ�֮20֮��Ľ�� 
SELECT EMPNO,ENAME,SAL,CAST(SAL AS float)*1.2 as'������ߺ�'
from EMP

--24.��ѯԱ���������͹������������޶�Ϊ�������������1200�����Ҳ�ѯ�������ְʱ�������������ְ��Ա������ǰ�� 
SELECT ENAME,sal
from EMP
WHERE SAL>1200
ORDER BY HIREDATE

--25.�г�����ACCOUNTING����֮�⻹��ʲô���� 
SELECT DNAME
from DEPT
WHERE DNAME NOT LIKE'ACCOUNTING'

--26.�ѹ�Ա�����ŷ��飬�����нˮ�����ź� Ҫ����˵������еڶ�����ĸ�ǡ�A����Ա�������Ҳ��ŵ�ƽ��нˮ > 3000,���ղ��ű�ŵ�������
SELECT MAX(SAL) as'���нˮ',DEPTNO as'���ű��'
from EMP
WHERE ENAME NOT LIKE'_A%' 
GROUP BY DEPTNO
HAVING AVG(SAL)>3000
ORDER BY DEPTNO DESC

