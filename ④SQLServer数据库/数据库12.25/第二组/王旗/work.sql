SELECT * FROM EMP
SELECT * FROM DEPT


--1.��ѯ���������ǡ�SALES����Ա����Ϣ
 SELECT *
 from DEPT a INNER JOIN EMP b 
 ON a.DEPTNO=b.DEPTNO
 WHERE a.DNAME='SALES'

--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
SELECT *
from EMP
WHERE SAL=(SELECT MAX(SAL)FROM EMP)

--3.��ѯ�����������нˮ��Ա����ţ������� 
SELECT EMPNO,ENAME
from EMP
WHERE SAL IN (SELECT MAX(SAL)FROM EMP GROUP BY DEPTNO)
--4.��ѯ���������нˮ��Ա����Ϣ 
SELECT *
from EMP
WHERE SAL IN (SELECT MAX(SAL)FROM EMP GROUP BY DEPTNO)

--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ
SELECT *
from EMP 
WHERE sal >all(SELECT AVG(SAL)from EMP GROUP BY DEPTNO) 

--6.��ѯ���������ǡ�SALES����Ա����Ϣ 
 SELECT *
 from DEPT a INNER JOIN EMP b 
 ON a.DEPTNO=b.DEPTNO
 WHERE a.DNAME='SALES'

--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT *
from EMP
WHERE MGR=(SELECT EMPNO FROM EMP WHERE ENAME='BLAKE')

--8.��ѯ��SMITH������ͬ��Ա����Ϣ 
SELECT *
from EMP
WHERE JOB=(SELECT JOB from EMP WHERE ENAME='SMITH')

--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű��
SELECT DISTINCT DEPTNO
from EMP
WHERE (SELECT AVG(SAL)from EMP WHERE DEPTNO=10)>Any(select AVG(sal) from EMP GROUP BY DEPTNO)

--10.��ѯ��NEW YORK����������Ա�� 
SELECT e.ENAME
from EMP e INNER JOIN DEPT d 
ON e.DEPTNO=e.DEPTNO
WHERE d.LOC='NEW YORK'

--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı�����
SELECT CAST((SELECT count(*) from emp WHERE deptno=10) AS nvarchar)+'/'+CAST(COUNT(*) AS nvarchar)as '����'
from EMP 


--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������ 
--13���ҳ�нˮ��ߵ������ 
--14���г�����������Ա�������в��źͲ�����Ϣ
--15����ѯ�����ְ��5��Ա��
--16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����

--17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����

--18����нˮ��͵Ĳ��ž������ڲ��ŵ�����
