--1.��ѯ���������ǡ�SALES����Ա����Ϣ 
select *
from EMP a

select *
from DEPT a

select *
from EMP a inner join DEPT b on a.DEPTNO=b.DEPTNO
where b.DNAME='SALES'



--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
select *
from EMP 
where SAL =(select MAX (a.SAL)from EMP a)


--3.��ѯ�����������нˮ��Ա����ţ������� 
select ENAME ,EMPNO 
from EMP 
where SAL in(select MAX(a.SAL) from EMP a group by a.DEPTNO)



--4.��ѯ���������нˮ��Ա����Ϣ 
select *
from EMP 
where SAL in(select MAX(a.SAL) from EMP a group by a.DEPTNO)


--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ 
select *
from EMP 
where SAL  < IN(select avg(a.SAL) from EMP a group by a.DEPTNO)


--6.��ѯ���������ǡ�SALES����Ա����Ϣ 
select *
from EMP a inner join DEPT b on a.DEPTNO=b.DEPTNO
where b.DNAME='SALES'


--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
select *
from EMP 
where MGR =(select a.EMPNO  from EMP a where a.ENAME='BLAKE' )

--8.��ѯ��SMITH������ͬ��Ա����Ϣ 
select *
from EMP 
where JOB =(select a.JOB from EMP a where a.ENAME='SMITH');

--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 
select  b.DEPTNO 
from EMP b
group by b.DEPTNO
having avg(b.SAL )<(select  avg (a.SAL) from EMP a where a.DEPTNO='10'  );



--10.��ѯ��NEW YORK����������Ա�� 
select a.*
from EMP a inner join dept  b on a.DEPTNO=b.DEPTNO
where LOC ='NEW YORK'


--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı����� 



SELECT (SELECT COUNT(*) from EMP a WHERE a.DEPTNO ='10')*100/COUNT(*) AS '����'
from EMP b




--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������
SELECT ENAME 
from EMP 
where SAL > (SELECT MAX(c.SAL ) 
from EMP c 
WHERE c.EMPNO NOT  IN (SELECT a.EMPNO   from EMP  a 
where a.EMPNO  IN (SELECT b.MGR from EMP b )))





 

--13���ҳ�нˮ��ߵ������ 
select top 5 ENAME , SAL 
from EMP 
order by SAL  desc
--14���г�����������Ա�������в��źͲ�����Ϣ
select distinct a.DEPTNO,b.DNAME,b.LOC
from EMP a inner join DEPT b on a.DEPTNO=b.DEPTNO
where a.DEPTNO in(select d.DEPTNO from EMP d group by d.DEPTNO having COUNT(*)>=3) 

--15����ѯ�����ְ��5��Ա��
select top 5 ENAME 
from EMP 
order by hiredate desc
--16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����
select job,COUNT (*)
from EMP 
group by JOB 
having MIN(SAL )>1500





--17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����
select ENAME,SAL 
from EMP 
where SAL  in(select MIN (SAL )  from EMP a group by a.JOB )

 
--18����нˮ��͵Ĳ��ž������ڲ��ŵ�����


select  c.DNAME
from EMP b inner join  DEPT  c on b.DEPTNO=c.DEPTNO
where SAL  in (select MIN (a.SAL ) from EMP a where JOB ='MANAGER')





