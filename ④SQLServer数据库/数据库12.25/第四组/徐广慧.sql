SELECT *FROM EMP
SELECT *FROM DEPT 



----1.��ѯ���������ǡ�SALES����Ա����Ϣ 

SELECT *
FROM DEPT A
where A.DNAME ='SALES'


--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
SELECT *FROM EMP WHERE SAL=(SELECT MAX(SAL) FROM EMP )





--3.��ѯ�����������нˮ��Ա����ţ������� 
SELECT a.EMPNO,a.ENAME 
from EMP a
where a.SAL IN(SELECT MAX(a.SAL )
			   from EMP a
			   GROUP BY a.DEPTNO 
				
				
				)



--4.��ѯ���������нˮ��Ա����Ϣ 
select *
from emp a
where a.SAL IN (SELECT MAX(a.SAL ) from EMP a GROUP BY a.DEPTNO  )



--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ 
select *
FROM EMP a
where a.SAL > (SELECT AVG(a.SAL ) from EMP a group BY a.DEPTNO  )





--6.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT *
FROM DEPT  a
where a.DNAME ='SALES'



--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
select *
FROM EMP  a 
WHERE a.MGR   IN  (SELECT  z.MGR  from  EMP z WHERE z.ENAME='BLAKE')




--8.��ѯ��SMITH������ͬ��Ա����Ϣ 
select * FROM EMP a WHERE a.JOB IN (SELECT z.JOB from EMP z WHERE z.ENAME='SMITH')



--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 
SELECT a.DEPTNO 
from EMP a 
GROUP BY a.DEPTNO 
HAVING  AVG(a.SAL )<(SELECT avg(z.SAL) from  EMP z  WHERE z.DEPTNO =10) 


--10.��ѯ��NEW YORK����������Ա�� 
select *
from EMP a INNER JOIN DEPT z 
ON a.DEPTNO=z.DEPTNO
AND z.loc='NEW YORK'



--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı����� 





--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������ 



--13���ҳ�нˮ��ߵ������ 
select TOP 5*
FROM EMP a 
ORDER BY a.SAL DESC 
--14���г�����������Ա�������в��źͲ�����Ϣ
select z.DEPTNO,z.DNAME,z.LOC
from EMP a INNER JOIN  DEPT z
group BY z.DEPTNO
ON a.DEPTNO =z.DEPTNO
AND COUNT(a.ENAME)>=3 
--15����ѯ�����ְ��5��Ա��
SELECT  TOP 5 a.HIREDATE
from EMP a 
ORDER BY a.HIREDATE DESC 



--16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����
SELECT COUNT(*)
from EMP a 
WHERE a.SAL <1500






--17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����

--18����нˮ��͵Ĳ��ž������ڲ��ŵ�����



	