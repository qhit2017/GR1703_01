SELECT * FROM EMP
SELECT *FROM DEPT

--1.��ѯ���������ǡ�SALES����Ա����Ϣ 

SELECT e.*
from EMP e INNER JOIN DEPT d
	ON e.DEPTNO=d.DEPTNO
	WHERE d.DNAME='SALES'

--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 

SELECT *
from EMP e
WHERE e.SAL=(SELECT MAX(a.sal) FROM EMP a)

--3.��ѯ�����������нˮ��Ա����ţ������� 

SELECT e.EMPNO,e.ENAME
from EMP e
WHERE e.SAL=any(SELECT MAX(a.SAL)from EMP a GROUP BY a.DEPTNO)

--4.��ѯ���������нˮ��Ա����Ϣ 

SELECT *
from EMP e
WHERE e.SAL=any(SELECT MAX(a.SAL)from EMP a GROUP BY a.DEPTNO)

--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ

SELECT *
from EMP e
WHERE e.SAL IN(SELECT a.ENAME from EMP a where a.SAL in(SELECT AVG(b.sal)  from EMP b GROUP BY b.DEPTNO) GROUP BY a.DEPTNO )


--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 

SELECT *
from EMP e
where e.MGR=(SELECT a.EMPNO from EMP a WHERE a.ENAME='BLAKE')

--8.��ѯ��SMITH������ͬ��Ա����Ϣ 

SELECT *
from EMP e
WHERE e.JOB=(SELECT a.JOB from EMP a WHERE a.ENAME='SMITH')AND e.ENAME!='SMINTH'

--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű��

SELECT e.DEPTNO
from EMP e INNER JOIN DEPT d
	ON e.DEPTNO=d.DEPTNO
	
	group BY e.DEPTNO
	HAVING AVG(e.SAL) <(SELECT AVG(a.SAL)  from EMP a WHERE a.DEPTNO=10 )
	
--10.��ѯ��NEW YORK����������Ա�� 

SELECT e.*
from DEPT d INNER join EMP e
	ON d.DEPTNO=e.DEPTNO
	WHERE d.LOC='NEW YORK'
	
--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı����� 

SELECT cast(COUNT(*) AS nvarchar)+'/'+CAST ((SELECT COUNT(*)  from EMP a ) AS nvarchar) as'10�Ų���Ա����ռ��˾����'
from EMP e
WHERE e.DEPTNO=10

--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������

SELECT *from EMP

SELECT e.ENAME
from EMP e
where e.SAL>(SELECT MAX(a.SAL)  from EMP a WHERE a.EMPNO!=a.MGR)

--13���ҳ�нˮ��ߵ������ 

SELECT TOP 5 *
from EMP e
ORDER BY e.SAL DESC

--14���г�����������Ա�������в��źͲ�����Ϣ

SELECT DISTINCT d.*
from DEPT d INNER JOIN EMP e
	on d.DEPTNO=e.DEPTNO
	WHERE e.DEPTNO in(SELECT b.DEPTNO from DEPT a INNER JOIN EMP b on a.DEPTNO=b.DEPTNO GROUP BY b.DEPTNO HAVING COUNT(*)>=5)

--15����ѯ�����ְ��5��Ա��

SELECT TOP 5 *
from EMP e
ORDER BY e.HIREDATE DESC

--16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����

SELECT e.JOB,COUNT(*)as'�ø�λ��������'
from EMP e
WHERE e.JOB in(SELECT a.JOB  from EMP a  GROUP BY a.JOB HAVING MIN(a.SAL)>1500)
GROUP BY e.JOB

--17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����

SELECT  e.SAL,e.ENAME
from EMP e
WHERE e.SAL in(SELECT MIN(a.SAL) from EMP a GROUP BY a.JOB)

--18����нˮ��͵Ĳ��ž������ڲ��ŵ�����

SELECT d.DNAME
from DEPT d INNER JOIN EMP e
	on d.DEPTNO=e.DEPTNO
	WHERE e.SAL in(SELECT min(a.sal) from EMP a WHERE a.JOB='MANAGER' GROUP BY a.DEPTNO )
	

SELECT * FROM EMP