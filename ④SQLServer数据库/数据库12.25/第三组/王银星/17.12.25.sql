--1.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT *
FROM EMP a
where a.JOB LIKE '%SALES%'
--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
SELECT *
FROM EMP a
WHERE a.SAL =(SELECT MAX(b.SAL)  FROM EMP b) 
--3.��ѯ�����������нˮ��Ա����ţ�������
SELECT *
FROM EMP a
WHERE a.SAL IN (SELECT MAX(b.SAL)  FROM EMP b GROUP BY b.JOB)
--4.��ѯ���������нˮ��Ա����Ϣ 
SELECT *
FROM EMP a
WHERE a.SAL IN (SELECT MAX(b.SAL)  FROM EMP b GROUP BY b.JOB)
--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ 
--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT *
FROM EMP a
where a.ENAME ='BLAKE'
--8.��ѯ��SMITH������ͬ��Ա����Ϣ 
SELECT *
FROM EMP a
where a.JOB  LIKE(SELECT b.JOB FROM EMP b WHERE b.ENAME ='SMITH')
--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 
SELECT  AVG(a.SAL)
FROM EMP a
GROUP BY a.JOB
HAVING AVG(a.SAL)<(SELECT AVG(b.SAL)  FROM EMP b WHERE b.DEPTNO =10)
--10.��ѯ��NEW YORK����������Ա�� 
SELECT *
FROM EMP a INNER JOIN  DEPT b
ON a.DEPTNO =b.DEPTNO
WHERE b.LOC LIKE 'NEW YORK'
--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı����� 
SELECT  (SELECT COUNT(*)  FROM EMP b WHERE b.DEPTNO =10)/ COUNT(*)AS '����'
FROM EMP 
--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������
SELECT s.ENAME
FROM EMP s
WHERE s.SAL =(SELECT v.SAL FROM EMP v where v.MGR IN (SELECT b.EMPNO FROM EMP b WHERE b.MGR IS  NULL) )
>(SELECT MAX(a.SAL) FROM EMP a where a.MGR IN (SELECT b.EMPNO FROM EMP b WHERE b.MGR IS NOT NULL) )
--13���ҳ�нˮ��ߵ������
SELECT TOP 5 *
FROM EMP a
ORDER BY a.SAL DESC 
--14���г�����������Ա�������в��źͲ�����Ϣ
SELECT *
FROM EMP a
WHERE(SELECT COUNT(b.ENAME)FROM EMP b GROUP BY b.JOB)>=3

--15����ѯ�����ְ��5��Ա��
SELECT TOP 5 *
FROM EMP a
ORDER BY a.HIREDATE DESC
--16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����

--17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����

--18����нˮ��͵Ĳ��ž������ڲ��ŵ�����
SELECT v.DEPTNO
FROM EMP b INNER JOIN DEPT v ON b.DEPTNO =v.DEPTNO
WHERE b.SAL =(SELECT MIN(a.SAL)  FROM EMP a WHERE a.JOB LIKE 'MANAGER')
