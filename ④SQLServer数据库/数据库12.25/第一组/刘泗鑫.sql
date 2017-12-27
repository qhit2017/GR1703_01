SELECT * FROM EMP

SELECT * FROM DEPT

--1.��ѯ���������ǡ�SALES����Ա����Ϣ
SELECT e.*,d.DNAME
FROM EMP e INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO
AND d.DNAME='SALES'
 
--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
SELECT a.*
FROM EMP a
WHERE a.SAL=(SELECT MAX(e.SAL) FROM EMP e)

--3.��ѯ�����������нˮ��Ա����ţ�������
SELECT a.EMPNO,a.ENAME
FROM EMP a
WHERE a.SAL IN (SELECT MAX(b.SAL) FROM EMP b GROUP BY b.DEPTNO)

--4.��ѯ���������нˮ��Ա����Ϣ
SELECT *
FROM EMP a
WHERE a.SAL IN (SELECT MAX(b.SAL) FROM EMP b GROUP BY b.DEPTNO)

--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ 
SELECT *
FROM EMP a
WHERE a.SAL > ALL (SELECT AVG(b.SAL) FROM EMP b GROUP BY b.DEPTNO)

--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT *
FROM EMP a
WHERE a.MGR = (SELECT b.EMPNO from EMP b WHERE b.ENAME = 'BLAKE')

--8.��ѯ��SMITH������ͬ��Ա����Ϣ
SELECT *
FROM EMP a
WHERE a.JOB = (SELECT b.JOB from EMP b WHERE b.ENAME = 'SMITH') 

--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 
SELECT a.DEPTNO
FROM EMP a
GROUP BY a.DEPTNO
HAVING AVG(a.SAL) < (SELECT AVG(b.SAL) from EMP b WHERE b.DEPTNO = 10)

--10.��ѯ��NEW YORK����������Ա��
SELECT *
FROM EMP a INNER JOIN DEPT d ON a.DEPTNO = d.DEPTNO
WHERE d.LOC = 'NEW YORK'

--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı�����
SELECT CAST(COUNT(*) AS nvarchar) +'/' + CAST((SELECT COUNT(*) FROM EMP c) AS nvarchar) AS '����'
FROM EMP a 
WHERE a.DEPTNO = 10

--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������ 
SELECT a.ENAME
FROM EMP a
WHERE a.SAL > (SELECT MAX(b.SAL) from EMP b WHERE b.JOB IN ('SALESMAN','CLERK'))

--13���ҳ�нˮ��ߵ������
SELECT TOP 5 *
FROM EMP a
ORDER BY a.SAL DESC

--14���г�����������Ա�������в��źͲ�����Ϣ
SELECT d.* 
FROM EMP a INNER JOIN DEPT d ON a.DEPTNO = d.DEPTNO
GROUP BY a.DEPTNO,d.DEPTNO,d.DNAME,d.LOC
HAVING COUNT(a.EMPNO)>=3

--15����ѯ�����ְ��5��Ա��
SELECT TOP 5 *
FROM EMP a
ORDER BY a.HIREDATE DESC

--16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����
SELECT a.JOB,COUNT(a.ENAME) AS '��Ա��'
FROM EMP a
GROUP BY a.JOB
HAVING MIN(a.SAL)>1500

--17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����
SELECT a.ENAME,MIN(a.SAL) AS '��͹���'
FROM EMP a
GROUP BY a.JOB,a.ENAME

--18����нˮ��͵Ĳ��ž������ڲ��ŵ�����
SELECT d.DNAME
FROM EMP a INNER JOIN DEPT d ON a.DEPTNO = d.DEPTNO
WHERE a.SAL = (SELECT MIN(b.SAL) FROM EMP b WHERE b.JOB = 'MANAGER')
