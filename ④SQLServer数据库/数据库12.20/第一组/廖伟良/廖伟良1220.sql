--1.��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
select a.Sno,a.Sname
from Student a where a.Grade is null

--2.��ѯÿ��רҵ��ѧ����ƽ���ɼ���
select b.Sdept as'רҵ',avg(b.Grade) as'����'
from Student b
group by b.Sdept

--3.�������гɼ���ѧ����ѧ�ź�������
select c.Sno,c.Sname
from Student c where c.Grade is not null

--4.��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
select * 
from Student d
order by d.Sdept asc,d.Sage desc

--5.��ѯѧ����������
select COUNT(*)
from Student

--6.��ѯ������Ů����������
select e.Ssex as'�Ա�',count(*) as'����'
from Student e
group by e.Ssex

--7.��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
select f.Sdept as'רҵ',avg(f.Grade) as'����'
from Student f
group by f.Sdept,f.Grade
order by f.Grade desc

--8.��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
select g.Sdept as'רҵ',max(g.Grade) as'����'
from Student g
group by g.Sdept

--9.��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
select h.Sdept as'רҵ',min(h.Grade) as'����'
from Student h
group by h.Sdept

--10.��ѯƽ���ɼ�����רҵ�����֡�
select top 1 i.Sdept
from Student i
group by i.Sdept
order by avg(i.Grade)


--11.��ѯ������Ů����ƽ���ɼ���
select j.Ssex as'�Ա�',avg(j.Grade) as'ƽ���ɼ�'
from Student j
group by j.Ssex

--12.��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���
select k.Sname,k.Grade
from Student k
where k.Grade>(select avg(n.Grade)from Student n)

--13.��ѯרҵѧ����������50�˵�רҵ����
select l.Sdept as'רҵ��'
from Student l
group by l.Sdept
having count(l.Sdept)>50

--14.��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ����
select '�����' as'רҵ��',avg(m.Grade) as'����'
from Student m
where m.Sdept='�����' and m.Sage<18

select * from Student