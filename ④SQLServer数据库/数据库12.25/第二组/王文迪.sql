1.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT * FROM EMP e INNER JOIN DEPT d
	ON e.DEPTNO = d.DEPTNO
	AND d.DNAME = 'SALES';
	
2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ
SELECT * FROM EMP 
WHERE SAL = (SELECT MAX(SAL) FROM EMP);

3.��ѯ�����������нˮ��Ա����ţ�������
SELECT e.EMPNO,e.ENAME FROM EMP e
WHERE e.SAL IN (SELECT MAX(e.SAL) FROM EMP e GROUP BY e.DEPTNO);

4.��ѯ���������нˮ��Ա����Ϣ 
SELECT * FROM EMP e
WHERE e.SAL IN (SELECT MAX(e.SAL) FROM EMP e GROUP BY e.DEPTNO);

5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ
SELECT * FROM EMP e WHERE e.SAL > (SELECT AVG(e.SAL) FROM EMP e WHERE e.DEPTNO = 10) AND e.DEPTNO = 10
						OR e.SAL >(SELECT AVG(e.SAL) FROM EMP e WHERE e.DEPTNO = 20) AND e.DEPTNO=20
						OR e.SAL >(SELECT AVG(e.SAL) FROM EMP e WHERE e.DEPTNO = 30) AND e.DEPTNO=30
						OR e.SAL >(SELECT AVG(e.SAL) FROM EMP e WHERE e.DEPTNO = 40) AND e.DEPTNO=40
ORDER BY e.DEPTNO;

6.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT * FROM EMP e INNER JOIN DEPT d
	ON e.DEPTNO = d.DEPTNO
	AND d.DNAME = 'SALES';

7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ
SELECT * FROM EMP e
WHERE e.MGR=(SELECT e.EMPNO FROM EMP e WHERE e.ENAME = 'BLAKE');

8.��ѯ��SMITH������ͬ��Ա����Ϣ
SELECT * FROM EMP e
WHERE e.JOB = (SELECT E.JOB FROM EMP e WHERE e.ENAME = 'SMITH');

9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű��
SELECT e.DEPTNO FROM EMP e 
GROUP BY e.DEPTNO 
HAVING AVG(e.SAL)<(SELECT AVG(e.SAL) FROM EMP e WHERE e.DEPTNO = 10);
 

10.��ѯ��NEW YORK����������Ա�� 
SELECT e.* FROM EMP e INNER JOIN DEPT d ON d.DEPTNO = e.DEPTNO
AND d.LOC = 'NEW YORK';

11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı����� 
SELECT (SELECT COUNT(e.EMPNO) FROM EMP e WHERE e.DEPTNO = 10)*100/(COUNT(e.EMPNO)) AS '����(%)' FROM EMP e;

12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������
SELECT e.ENAME FROM EMP e
WHERE e.SAL >(SELECT MAX(e.SAL) FROM EMP e 
WHERE e.EMPNO NOT IN (SELECT e.EMPNO FROM EMP e WHERE e.EMPNO IN(SELECT e.MGR FROM EMP e)));

13���ҳ�нˮ��ߵ������
SELECT TOP 5 * FROM EMP e
ORDER BY e.SAL DESC;

14���г�����������Ա�������в��źͲ�����Ϣ
SELECT d.* FROM EMP e INNER JOIN DEPT d ON d.DEPTNO = e.DEPTNO
GROUP BY e.DEPTNO,d.DEPTNO,d.DNAME,d.LOC 
HAVING COUNT(e.EMPNO)>=3;

15����ѯ�����ְ��5��Ա��
SELECT TOP 5 e.ENAME  FROM EMP e
ORDER BY e.HIREDATE DESC;

16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����
SELECT e.JOB AS 'ְλ',COUNT(e.EMPNO) AS '����' FROM EMP e 
GROUP BY e.JOB
HAVING MIN(e.SAL)>1500;

17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����
SELECT e.ENAME FROM EMP e 
WHERE e.SAL IN (SELECT MIN(e.SAL) FROM EMP e GROUP BY e.JOB);

18����нˮ��͵Ĳ��ž������ڲ��ŵ�����
SELECT d.DNAME FROM EMP e INNER JOIN DEPT d ON d.DEPTNO = e.DEPTNO
AND e.SAL = (SELECT MIN(e.SAL) FROM EMP e WHERE e.EMPNO IN (SELECT e.MGR FROM EMP e GROUP BY e.MGR));