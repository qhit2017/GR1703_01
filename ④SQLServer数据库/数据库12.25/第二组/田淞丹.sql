--1.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT  e.* 
from EMP e INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO
AND d.DNAME='SALES'
--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
SELECT *  from EMP a WHERE a.SAL=
(SELECT MAX(b.SAL)  from EMP b )
--3.��ѯ�����������нˮ��Ա����ţ�����
SELECT  b.EMPNO,b.ENAME  from EMP b  WHERE   b.SAL IN 
(SELECT MAX (a.SAL) FROM EMP a GROUP BY a.DEPTNO ) 
--4.��ѯ���������нˮ��Ա����Ϣ 
SELECT  *  from EMP b  WHERE   b.SAL IN 
(SELECT  max(a.SAL) FROM EMP a GROUP BY a.DEPTNO ) 
--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ �����ᣩ
SELECT a.DEPTNO,* FROM EMP a GROUP BY a.DEPTNO HAVING  a.SAL>
(SELECT AVG(a.SAL)  from EMP b)
--6.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT * FROM EMP e INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO
AND d.DNAME='SALES'
--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT * FROM EMP a WHERE a.MGR IN 
(select b.EMPNO  from EMP b where b.ENAME='BLAKE')
--8.��ѯ��SMITH������ͬ��Ա����Ϣ 
SELECT * FROM EMP b WHERE b.JOB IN 
(SELECT a.JOB from EMP a WHERE a.ENAME='SMITH')
--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 
SELECT b.DEPTNO from EMP b GROUP BY b.DEPTNO HAVING AVG (b.SAL)<
(SELECT AVG(a.SAL)  from EMP a WHERE a.DEPTNO=10)
--10.��ѯ��NEW YORK����������Ա�� 
SELECT e.ENAME
from EMP e  INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO
WHERE d.LOC ='NEW YORK'
--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı�����
SELECT (SELECT COUNT(a.EMPNO)  from EMP a  WHERE a.DEPTNO=10)*100/ count(b.EMPNO)as '�ٷֱ�%' from EMP b 
--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������ ��д���ˣ�
SELECT b.ENAME from EMP b WHERE b.SAL>
(SELECT MAX(a.SAL)  from EMP a WHERE a.MGR IS NOT NULL)
--13���ҳ�нˮ��ߵ������ 
SELECT TOP 5 a.ENAME
from EMP a 
ORDER BY a.SAL DESC 
--14���г�����������Ա�������в��źͲ�����Ϣ
SELECT d.*
from EMP e INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO 
GROUP BY e.DEPTNO,d.DEPTNO,d.DNAME,d.LOC
HAVING COUNT(e.EMPNO)>=3 
--15����ѯ�����ְ��5��Ա��
SELECT TOP 5 a.ENAME
from EMP a 
ORDER BY a.HIREDATE 
--16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����
SELECT b.JOB as 'ְҵ' ,COUNT(*) as '����'  
 from EMP b 
GROUP BY b.JOB
HAVING MIN(b.SAL)>1500; 
--17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����
SELECT b.ENAME from EMP b WHERE b.SAL IN 
(SELECT  MIN(a.SAL)  from EMP a GROUP BY a.JOB )
--18����нˮ��͵Ĳ��ž������ڲ��ŵ����ƣ�д���ˣ�
SELECT d.DNAME
from EMP e  INNER JOIN DEPT d ON e.DEPTNO=d.DEPTNO
WHERE e.SAL IN (SELECT  MIN(a.SAL)  from emp a )
 