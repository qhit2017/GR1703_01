SELECT * FROM EMP
SELECT * FROM DEPT

--1.��ѯ�����ŵ����нˮ�����нˮ��ƽ��нˮ�� 
SELECT max(SAL) as '���нˮ',MIN(SAL)as '���нˮ',AVG(SAL) as 'ƽ��нˮ'
from EMP 
GROUP BY DEPTNO

--2.��ѯ��SMITH�����쵼����
SELECT *
FROM EMP
WHERE ENAME='SMITH'

--3.��ѯ��˾����Ա���ĸ��� 
SELECT COUNT(*) as 'Ա����'
from EMP

--4.��ѯ��˾�����нˮ�Ƕ��� 
SELECT MAX(SAL) as '���нˮ'
from EMP

--5.��ѯ��˾��ƽ�������Ƕ���
SELECT AVG(COMM) as 'ƽ������'
from EMP 

--6.��ѯ��˾��������ְ��ʱ�� 
SELECT Max(HIREDATE) as '������ְ��ʱ��'
from EMP

--7.��ѯ��˾���н�������� 
SELECT COUNT(*) as '����'
from EMP
where COMM IS NOT NULL

--8.��ѯ20���ŵ����нˮ�Ƕ��� 
SELECT MAX(SAL) as '20���ŵ����нˮ'
from EMP
WHERE DEPTNO=20

--9.��ѯ����Ա�������а�����A�������нˮ 
SELECT MAX(SAL)
from EMP
where ENAME LIKE '%A%'

--10.��ѯ����λ�����нˮ�����нˮ��Ҫ��ֻͳ��нˮ>1000�� 
SELECT JOB, MAX(SAL) as '���нˮ',MIN(SAL) as '���нˮ'
from EMP
WHERE SAL>1000
GROUP BY JOB 

--11.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ�г�ƽ��нˮ>2000 
SELECT DEPTNO,AVG(SAL) as 'ƽ��нˮ'
from EMP
GROUP BY DEPTNO HAVING AVG(SAL)>2000


--12.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ��Ա�������а��� 
--��A���Ų���ͳ�ƣ�ֻ�г�ƽ��нˮ>1500�ģ�����ƽ��нˮ�������� 
SELECT DEPTNO,AVG(SAL) as 'ƽ��нˮ'
from EMP
WHERE ENAME LIKE '%A%'
GROUP BY DEPTNO HAVING AVG(SAL)>1500
ORDER BY AVG(SAL) DESC

--13.��ѯԱ�����й��ʴ���1600��Ա���������͹��� 
SELECT ENAME,SAL
from EMP
WHERE SAL>1600

--14.��ѯԱ������Ա������17��Ա���������Ͳ��ű�� 
SELECT ENAME,DEPTNO
from EMP
WHERE EMPNO=17

--15.ѡ��Ա�����й��ʲ���4000��5000�ڵ�Ա���������͹��� 
SELECT ENAME,SAL
from EMP
WHERE SAL NOT BETWEEN 4000 AND 5000

--17.ѡ��Ա������û�й����ߵ�Ա��������ְλ����ְλ���� 
SELECT ENAME,JOB
from EMP
WHERE mgr IS NULL
ORDER by JOB

--18.ѡ��Ա�������н����Ա�����������ʺͽ��𣬰����ʵ������� 
SELECT ENAME,SAL,COMM
from EMP
WHERE COMM >0
ORDER BY SAL DESC

--19.ѡ��Ա������Ա�������ĵ�������ĸ��A��Ա������ 
SELECT ENAME
from EMP
WHERE ENAME LIKE '__A%'

--20.�г����ű��еĲ������ƺ����ڳ��� 
SELECT DEPTNO,LOC
from DEPT
GROUP BY DEPTNO,LOC

--21.��ʾԱ�����еĲ��ظ��ĸ�λjob
SELECT JOB,COUNT(*)
from EMP
GROUP BY JOB
HAVING COUNT(*)=1

--22.����Ա�����е�Ա��������ְλ��нˮ����֮���ö������ӣ���ͷ��ʾ�ɼ�� 
SELECT ENAME+','+JOB+','+cast ( SAL Avarchar) as '���'S n
from EMP

--23.��ѯԱ������Ա���ţ����������ʣ��Լ�������߰ٷ�֮20֮��Ľ��
SELECT EMPNO,ENAME,CAST(SAL AS double precision)*1.2
from EMP 

--24.��ѯԱ���������͹������������޶�Ϊ�������������1200�����Ҳ�ѯ�������ְʱ�������������ְ��Ա������ǰ�� 
SELECT ENAME,SAL
from EMP
where SAL>1200
ORDER BY HIREDATE

--25.�г�����ACCOUNTING����֮�⻹��ʲô���� 
SELECT DNAME
from DEPT
where DNAME NOT in ('ACCOUNTING')

--26.�ѹ�Ա�����ŷ��飬�����нˮ�����ź� Ҫ����˵������еڶ�����ĸ�ǡ�A����Ա���� ���Ҳ��ŵ�ƽ��нˮ > 3000,���ղ��ű�ŵ������� 
SELECT MAX(SAL),DEPTNO
from EMP
WHERE ENAME NOT LIKE '_A%'
GROUP BY DEPTNO HAVING AVG(SAL)>3000
ORDER BY DEPTNO DESC


