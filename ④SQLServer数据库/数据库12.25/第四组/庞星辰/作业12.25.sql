SELECT *
from EMP 

--1.��ѯ���������ǡ�SALES����Ա����Ϣ 
select a.*
from EMP a inner JOIN DEPT s ON a.DEPTNO = s.DEPTNO
AND s.DNAME='SALES'
--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
select a.*  from EMP a WHERE a.SAL=(SELECT MAX(s.SAL) from EMP s)
--3.��ѯ�����������нˮ��Ա����ţ������� 
select a.EMPNO,a.ENAME
from EMP a 
WHERE a.SAL in(SELECT MAX(s.SAL) from EMP s GROUP BY s.DEPTNO)
--4.��ѯ���������нˮ��Ա����Ϣ 
select a.*
from EMP a
WHERE a.SAL IN(SELECT MAX(s.SAL) from EMP s GROUP BY s.DEPTNO)
--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ 
select * FROM EMP a WHERE a.SAL>AVG(a.SAL) 
--6.��ѯ���������ǡ�SALES����Ա����Ϣ 
select * FROM EMP a INNER JOIN DEPT s ON a.DEPTNO=s.DEPTNO AND s.DNAME='SALES'
--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT * FROM EMP s WHERE s.MGR IN(select a.EMPNO FROM EMP a WHERE a.ENAME='BLAKE')
--8.��ѯ��SMITH������ͬ��Ա����Ϣ 
SELECT * FROM EMP s WHERE s.JOB =(select a.JOB from EMP a WHERE a.ENAME='SMITH' )
--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 
select a.DEPTNO
from EMP a
GROUP BY a.DEPTNO
HAVING AVG(a.SAL)<(SELECT avg(s.SAL) from EMP s WHERE s.DEPTNO=10)
--10.��ѯ��NEW YORK����������Ա�� 
select * from EMP a INNER JOIN DEPT  s ON a.DEPTNO=s.DEPTNO AND s.loc='NEW YORK'
--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı����� 

--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������ 
select max(a.SAL)from EMP a
--13���ҳ�нˮ��ߵ������ 
select TOP 5*
from EMP a
ORDER BY a.SAL DESC
--14���г�����������Ա�������в��źͲ�����Ϣ
select s.* from EMP a INNER JOIN DEPT s ON a.DEPTNO=s.DEPTNO 
GROUP BY a.DEPTNO,s.DEPTNO,s.DNAME,s.LOC 
HAVING COUNT(a.EMPNO)>=3
-- 15����ѯ�����ְ��5��Ա��
select TOP 5 a.*
from EMP a
ORDER BY a.HIREDATE DESC 
--16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����
select a.JOB,COUNT(*)  from EMP a
GROUP BY a.JOB
HAVING MIN(a.SAL)>1500
--17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����
select s.ENAME from EMP s WHERE s.sal in(select MIN(a.SAL) from EMP a GROUP BY a.JOB)
--18����нˮ��͵Ĳ��ž������ڲ��ŵ�����

