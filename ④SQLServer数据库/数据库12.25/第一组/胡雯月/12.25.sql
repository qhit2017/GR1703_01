--1.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT E.*
FROM EMP E INNER JOIN DEPT D 
ON E.DEPTNO = D.DEPTNO
WHERE D.DNAME='SALES'
 
--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
SELECT*
FROM EMP
WHERE SAL=(SELECT MAX(SAL)FROM EMP)

--3.��ѯ�����������нˮ��Ա����ţ������� 
SELECT E.EMPNO,E.ENAME 
FROM EMP E 
WHERE E.SAL IN(SELECT MAX(a.SAL)FROM EMP a GROUP BY a.DEPTNO)


--4.��ѯ���������нˮ��Ա����Ϣ 
SELECT*
from EMP e
WHERE e.SAL in (SELECT MAX(a.SAL)FROM EMP a GROUP BY a.DEPTNO )


--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ 
SELECT *
from emp  e
WHERE e.SAL>all(SELECT AVG(s.SAL)FROM EMP s GROUP BY s.DEPTNO )



--6.��ѯ���������ǡ�SALES����Ա����Ϣ
SELECT e.*
from EMP e INNER JOIN DEPT d on e.DEPTNO=d.DEPTNO 
WHERE d.DNAME='SALES'


--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT*
from emp e
WHERE e.MGR=(select a.EMPNO from EMP a where a.ENAME='BLAKE')


--8.��ѯ��SMITH������ͬ��Ա����Ϣ 
SELECT*
from EMP e
WHERE e.JOB=(SELECT b.JOB FROM EMP b WHERE b.ENAME='Smith')

--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 
SELECT e.EMPNO
FROM EMP e
GROUP BY e.EMPNO
HAVING avg(e.SAL)<(SELECT AVG(s.SAL) FROM EMP s WHERE s.EMPNO=10)

--10.��ѯ��NEW YORK����������Ա�� 
SELECT*
from EMP e INNER JOIN DEPT d ON e.DEPTNO =d.DEPTNO
WHERE d.LOC='NEW YORK'


--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı����� 

--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������ 
--13���ҳ�нˮ��ߵ������ 
SELECT TOP 5*
from  EMP e
ORDER BY e.SAL DESC


--14���г�����������Ա�������в��źͲ�����Ϣ
--15����ѯ�����ְ��5��Ա��
SELECT TOP 5*
from EMP e
order by e.HIREDATE DESC
--16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����

--17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����

--18����нˮ��͵Ĳ��ž������ڲ��ŵ�����
