
--1.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT e.*
from DEPT d INNER JOIN EMP e ON d.DEPTNO=e.DEPTNO
AND d.DNAME='SALES'

--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ			
SELECT * from EMP e WHERE e.SAL = (SELECT MAX(e.SAL) FROM EMP e)

--3.��ѯ�����������нˮ��Ա����ţ�������
 SELECT  a.DEPTNO,a.ENAME from EMP a WHERE a.SAL in    
 (SELECT  MAX(e.SAL)  FROM EMP e GROUP BY e.DEPTNO)


--4.��ѯ���������нˮ��Ա����Ϣ		
SELECT * FROM EMP a WHERE a.SAL IN
  (SELECT  MAX(a.SAL) from EMP a GROUP BY a.DEPTNO)

--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ		
SELECT * from EMP a WHERE a.SAL > all
(SELECT avg(a.SAL) FROM EMP a GROUP BY a.DEPTNO)

--6.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT *
FROM DEPT d INNER JOIN EMP e ON d.DEPTNO = e.DEPTNO
AND d.DNAME='SALES'

--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT * FROM EMP a WHERE a.MGR =
(SELECT a.EMPNO FROM EMP a WHERE a.ENAME='BLAKE')

--8.��ѯ��SMITH������ͬ��Ա����Ϣ 

SELECT * from EMP WHERE JOB = 
	(select e.JOB FROM EMP e WHERE e.ENAME = 'SMITH')

--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 
SELECT e.DEPTNO from EMP e GROUP BY e.DEPTNO HAVING AVG(e.SAL) <
 (SELECT AVG(a.SAL) from EMP a WHERE a.DEPTNO=10)

--10.��ѯ��NEW YORK����������Ա�� 
SELECT * FROM EMP e INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO
AND d.LOC='NEW YORK'

--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı����� 


--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������ 


--13���ҳ�нˮ��ߵ������ 
SELECT top 5 *
from EMP a
order BY a.SAL desc

--14���г�����������Ա�������в��źͲ�����Ϣ
SELECT d.* FROM EMP e INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO
GROUP BY  d.DEPTNO,d.DNAME,d.LOC
having COUNT(e.DEPTNO)>=3

--15����ѯ�����ְ��5��Ա��
SELECT TOP 10 * FROM EMP a ORDER BY a.HIREDATE desc

--16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����
SELECT e.JOB,COUNT(e.JOB) as '����' from EMP e 
GROUP BY e.JOB
HAVING min(e.SAL)>1500

--17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����



--18����нˮ��͵Ĳ��ž������ڲ��ŵ�����

 
