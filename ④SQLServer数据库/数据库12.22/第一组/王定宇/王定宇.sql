
--1.��ѯ�����ŵ����нˮ�����нˮ��ƽ��нˮ��. 
select a.deptno, MAX(a.sal) as '���нˮ',MIN(a.sal) as '���нˮ',AVG(a.sal) as 'ƽ��нˮ' 
from emp a
group by a.deptno

--2.��ѯ��SMITH�����쵼���� 
select top 1 a.ename
from emp a
where a.deptno ='20'
order by a.mgr desc

select * from emp
--3.��ѯ��˾����Ա���ĸ��� 
select COUNT(a.empno) as 'Ա������'
from emp a

--4.��ѯ��˾�����нˮ�Ƕ��� 
select MAX(a.sal) as '���нˮ'
from emp a

--5.��ѯ��˾��ƽ�������Ƕ��� 
select  AVG(a.comm) as 'ƽ������' 
from emp a

--6.��ѯ��˾��������ְ��ʱ�� 
select MIN(a.hiredate) as '��ְʱ��'
from emp a

--7.��ѯ��˾���н�������� 
select  COUNT(a.comm) '�н�������'
from emp a
where a.comm  is not null and a.comm not in  ('0')

--8.��ѯ20���ŵ����нˮ�Ƕ��� 
select MAX(a.sal) as '���нˮ'
from emp a
where a.deptno = '20'

--9.��ѯ����Ա�������а�����A�������нˮ 
select  MAX(a.sal) as '���нˮ'
from emp a
where a.ename like '%A%'

--10.��ѯ����λ�����нˮ�����нˮ��Ҫ��ֻͳ��нˮ>1000�� 
select a.job,MAX(a.sal) as '���нˮ',MIN(a.sal) as '���нˮ'
from emp a
where a.sal > 1000
group by a.job

--11.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ�г�ƽ��нˮ>2000 
select a.job, AVG(a.sal) as 'ƽ��нˮ',a.deptno 
from emp a
where a.sal > 2000
group by a.job,a.deptno


--12.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ��Ա�������а��� 
--   ��A���Ų���ͳ�ƣ�ֻ�г�ƽ��нˮ>1500�ģ�����ƽ��нˮ�������� 
select a.job, AVG(a.sal) as 'ƽ��нˮ',a.deptno 
from emp a
where a.ename like '%A%'
group by a.job,a.deptno
having  (select AVG(a.sal) from emp a) > 1500
order by AVG(a.sal) desc

--13.��ѯԱ�����й��ʴ���1600��Ա���������͹��� 
select a.ename,a.sal
from emp a
where a.sal > 1600

--14.��ѯԱ������Ա������17��Ա���������Ͳ��ű�� 
select a.ename,a.deptno
from emp a
where a.empno = 17

--15.ѡ��Ա�����й��ʲ���4000��5000�ڵ�Ա���������͹��� 
select a.ename,a.sal
from emp a
where a.sal not between 4000 and 5000

--16.ѡ��Ա��������20��30���Ź�����Ա���������Ͳ��ź� 
select a.ename,a.deptno
from emp a
where a.deptno =20 or a.deptno =30

--17.ѡ��Ա������û�й����ߵ�Ա��������ְλ����ְλ����     
select top 1 a.ename,a.job
from emp a
order by a.mgr DESC


--18.ѡ��Ա�������н����Ա�����������ʺͽ��𣬰����ʵ������� 
select a.ename,a.sal,a.comm
from emp a
where a.comm is not null
order by a.sal desc

--19.ѡ��Ա������Ա�������ĵ�������ĸ��A��Ա������ 
select a.ename
from emp a
where a.ename like '__A%'

--20.�г����ű��еĲ������ƺ����ڳ��� 
select a.dname,a.loc
from dept a

--21.��ʾԱ�����еĲ��ظ��ĸ�λjob 
select distinct a.job
from emp a

--22.����Ա�����е�Ա��������ְλ��нˮ����֮���ö������ӣ���ͷ��ʾ�ɼ��		XX



--23.��ѯԱ������Ա���ţ����������ʣ��Լ�������߰ٷ�֮20֮��Ľ��           XX
select a.empno,a.ename,a.sal
case


--24.��ѯԱ���������͹������������޶�Ϊ�������������1200��
--	���Ҳ�ѯ�������ְʱ�������������ְ��Ա������ǰ�� 
select a.ename,a.sal
from emp a
where a.sal>1200
order by a.hiredate asc

--25.�г�����ACCOUNTING����֮�⻹��ʲô���� 
select a.dname
from dept a
where a.dname not in ('ACCOUNTING') 

--26.�ѹ�Ա�����ŷ��飬�����нˮ�����ź� Ҫ����˵������еڶ�����ĸ�ǡ�A����Ա����
--	 ���Ҳ��ŵ�ƽ��нˮ > 3000,���ղ��ű�ŵ������� 
select  MAX(a.sal) as '���нˮ',a.deptno
from emp a
where a.ename not like  '_A%' 
group by a.deptno
having (select AVG(a.sal) from emp a) >3000
order by a.deptno desc


select  a.deptno, avg(a.sal) 
from emp a
group by a.deptno

