SELECT * FROM EMP a

--1.��ѯ���������ǡ�SALES����Ա����Ϣ

SELECT *

from EMP a ,DEPT d

--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 

SELECT  MAX(e.SAL)  

from EMP e 

--3.��ѯ�����������нˮ��Ա����ţ������� 

SELECT e.EMPNO,e.ENAME

from EMP e, DEPT d

--4.��ѯ���������нˮ��Ա����Ϣ

 select MAX(COUNT(*) )
  
 from emp a , dept d
 
--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ

SELECT COUNT(*)

from EMP s 

WHERE (s.SAL)>AVG(s.SAL) 

--6.��ѯ���������ǡ�SALES����Ա����Ϣ 

--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 

SELECT *

from EMP n where n.EMPNO=(SELECT n.MGR from EMP n WHERE n.ENAME='BLAKE')

--8.��ѯ��SMITH������ͬ��Ա����Ϣ 

SELECT COUNT(*)

from EMP d WHERE d.DEPTNO IN (SELECT d.DEPTNO from emp a where a.ENAME)IN ('SMITH')


--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 

--10.��ѯ��NEW YORK����������Ա�� 

SELECT *

from EMP a

where a.JOB='NEW YORK'

--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı����� 

--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������ 

select a.ENAME

from emp a where sal > all

--13���ҳ�нˮ��ߵ������

SELECT max (a.SAL)

from EMP a

WHERE max (a.SAL)=5

--14���г�����������Ա�������в��źͲ�����Ϣ

--15����ѯ�����ְ��5��Ա��

SELECT TOP 5

from EMP a 
